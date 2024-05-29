<script setup>
import {computed, defineAsyncComponent, inject, onMounted, ref, watch} from "vue";
import {capitalize, clone, cloneDeep, debounce} from "lodash";
import {extractFirstURL} from "../../helpers";
import usePost from "@/Composables/usePost";
import usePostVersions from "@/Composables/usePostVersions";
import useEditor from "@/Composables/useEditor";
import Editor from "@/Components/Package/Editor.vue";
import EmojiPicker from '@/Components/Package/EmojiPicker.vue'
import Panel from "@/Components/Surface/Panel.vue";
import Account from "@/Components/Account/Account.vue"
import PostVersionsTab from "@/Components/Post/PostVersionsTab.vue"
import PostAddMedia from "@/Components/Post/PostAddMedia.vue"
import PostMedia from "@/Components/Post/PostMedia.vue"
import PostCharacterCount from "@/Components/Post/PostCharacterCount.vue"
import PostVersionOptions from "@/Components/Post/PostVersionOptions.vue";
import HashtagManager from "../HashtagManager/HashtagManager.vue";
import VariableManager from "../VariableManager/VariableManager.vue";
import TemplateManager from "../TemplateManager/TemplateManager.vue";
import usePostURLMeta from "../../Composables/usePostURLMeta";

const AIAssist = defineAsyncComponent(() => import("@/Components/AI/Text/AIAssist.vue"));

const routePrefix = inject('routePrefix');
const postCtx = inject('postCtx')

const props = defineProps({
    form: {
        required: true,
        type: Object
    },
    accounts: {
        required: true,
        type: Array
    },
});

const {editAllowed} = usePost();

/**
 * Account
 */
const selectAccount = (account) => {
    if (!editAllowed.value) {
        return;
    }

    if (props.form.accounts.includes(account)) {
        props.form.accounts = props.form.accounts.filter(item => item !== account);
        return;
    }

    const accounts = clone(props.form.accounts);
    accounts.push(account);

    props.form.accounts = accounts;
}

const selectedAccounts = computed(() => {
    return props.accounts.filter(function (account) {
        return isAccountSelected(account);
    })
});

const providersWithDisabledSimultaneousPosting = computed(() => {
    return selectedAccounts.value.filter((account) => {
        return !account.provider_options.simultaneous_posting_on_multiple_accounts;
    }).map((account) => {
        return account.provider;
    });
});

const isAccountSelected = (account) => {
    return props.form.accounts.includes(account.id);
}

const isAccountUnselectable = (account) => {
    return !isAccountSelected(account) && providersWithDisabledSimultaneousPosting.value.includes(account.provider);
}

/**
 * Post content versions & Editor
 */
const {
    versionObject,
    getOriginalVersion,
    getAccountVersion,
    getIndexAccountVersion
} = usePostVersions();

const {setupURLMeta, setupURLMetaForAllVersions} = usePostURLMeta();

const activeVersion = ref(0);

const resetActiveVersion = () => {
    activeVersion.value = 0;
}

const content = computed(() => {
    return getAccountVersion(props.form.versions, activeVersion.value).content;
})

const updateContent = (contentIndex, key, value) => {
    const versionIndex = getIndexAccountVersion(props.form.versions, activeVersion.value);

    props.form.versions[versionIndex].content[contentIndex][key] = value;

    extractAndAssignUrlToContentItem(versionIndex, contentIndex);
}

const extractAndAssignUrlToContentItem = debounce((versionIndex, contentIndex) => {
    const oldUrl = props.form.versions[versionIndex].content[contentIndex]['url'];
    let newUrl = '';

    if (props.form.versions[versionIndex].content[contentIndex]['media'].length) {
        props.form.versions[versionIndex].content[contentIndex]['url'] = newUrl;
    } else {
        newUrl = extractFirstURL(props.form.versions[versionIndex].content[contentIndex]['body']);

        props.form.versions[versionIndex].content[contentIndex]['url'] = newUrl;
    }

    if (oldUrl !== newUrl) {
        setupURLMeta(oldUrl, newUrl);
    }
}, 300);

const addVersion = (accountId) => {
    let newVersion = versionObject(accountId);

    // Copy content from the default version to the new version
    const originalVersion = getOriginalVersion(props.form.versions);

    newVersion.content = cloneDeep(originalVersion.content);
    newVersion.options = cloneDeep(originalVersion.options);

    props.form.versions.push(newVersion);

    // Set added version as active version
    activeVersion.value = accountId;
}

const removeVersion = (accountId) => {
    if (!accountId) {
        return;
    }

    const versionIndex = getIndexAccountVersion(props.form.versions, accountId);

    if (versionIndex < 0) {
        return;
    }

    props.form.versions.splice(versionIndex, 1);
}

const setupVersions = () => {
    // If an account was deselected, we're make sure to change the active version to the default version
    const isAccountSelected = props.form.accounts.includes(activeVersion.value);

    if (!isAccountSelected) {
        resetActiveVersion();
    }

    // If is only one account selected and if is original active version, we switch active version for that account.
    if (props.form.accounts.length === 1 && activeVersion.value === 0) {
        const firstAccountId = props.form.accounts[0];

        if (firstAccountId !== 0 && getAccountVersion(props.form.versions, firstAccountId)) {
            activeVersion.value = firstAccountId;
        }
    }
}

const characterLimitActiveVersion = computed(() => {
    const find = postCtx.textLimit.find((item) => item.account_id === activeVersion.value);

    return find ? find.limit : 1000;
})

onMounted(() => {
    setupVersions();

    setupURLMetaForAllVersions(props.form.versions);
})

watch(() => props.form.accounts, () => {
    setupVersions();
});

const {insertEmoji, insertContent, replaceContent, focusEditor} = useEditor();
</script>
<template>
    <div class="flex flex-wrap items-center gap-sm mb-lg">
        <template v-for="account in $page.props.accounts" :key="account.id">
            <button @click="selectAccount(account.id)"
                    :disabled="isAccountUnselectable(account)">
                <Account
                    :provider="account.provider"
                    :name="account.name"
                    :img-url="account.image"
                    :warning-message="isAccountUnselectable(account) ?  $t('post.no_simultaneous_post', {'provider' : capitalize(account.provider) }) : '' "
                    :active="isAccountSelected(account)"
                    v-tooltip="account.name"
                />
            </button>
        </template>
    </div>

    <Panel>
        <PostVersionsTab v-if="form.accounts.length > 1"
                         @add="(accountId) => {
                             addVersion(accountId);
                         }"
                         @remove="(accountId) => {
                             removeVersion(accountId);
                             resetActiveVersion();
                         }"
                         @select="(accountId) => {
                             activeVersion = accountId;
                         }"
                         :versions="form.versions"
                         :active-version="activeVersion"
                         :accounts="$page.props.accounts"
                         :selected-accounts="form.accounts"
                         class="mb-sm"/>

        <PostVersionOptions
            :selectedAccounts="selectedAccounts"
            :versions="form.versions"
            :activeVersion="activeVersion"
        />

        <template v-for="(item, index) in content" :key="index">
            <Editor id="postEditor"
                    :value="item.body"
                    :editable="editAllowed"
                    @update="updateContent(index, 'body', $event)"
                    :placeholder="$t('post.type_something')">
                <template #default="props">
                    <div class="relative flex items-center justify-between border-t border-gray-200 pt-md mt-md">
                        <div v-if="!editAllowed" class="absolute w-full h-full"></div>

                        <div class="flex items-center space-x-xs">
                            <EmojiPicker
                                @selected="insertEmoji({editorId: 'postEditor', emoji: $event})"
                                @close="focusEditor({editorId: 'postEditor'})"
                            />

                            <PostAddMedia @insert="updateContent(index, 'media', [...item.media, ...$event])"
                                          :selectedAccounts="selectedAccounts"
                                          :activeVersion="activeVersion"
                                          :versions="form.versions"
                                          :media="item.media"/>

                            <HashtagManager
                                :editAllowed="editAllowed"
                                @insert="insertContent({editorId: 'postEditor', text: $event})"
                            />

                            <VariableManager
                                :editAllowed="editAllowed"
                                @insert="insertContent({editorId: 'postEditor', text: $event})"
                            />

                            <TemplateManager
                                :postContent="content"
                                @insert="(event)=> {
                                    updateContent(index, 'media', event.content[index].media);
                                    insertContent({editorId: 'postEditor', text: event.content[index].body})
                                }"
                            />

                            <template v-if="$page.props.ai_is_ready_to_use">
                                <AIAssist @insert="insertContent({editorId: 'postEditor', text: $event})"
                                          @replace="replaceContent({editorId: 'postEditor', text: $event})"
                                          :text="item.body"
                                          :characterLimit="characterLimitActiveVersion"
                                />
                            </template>
                        </div>

                        <PostCharacterCount :selectedAccounts="selectedAccounts"
                                            :activeVersion="activeVersion"
                                            :versions="form.versions"/>
                    </div>
                </template>
            </Editor>

            <PostMedia :media="item.media" @updated="updateContent(index, 'media', $event)"/>
        </template>
    </Panel>
</template>

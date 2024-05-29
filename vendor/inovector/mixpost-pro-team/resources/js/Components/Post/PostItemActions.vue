<script setup>
import {computed, inject, ref} from "vue";
import {useI18n} from "vue-i18n";
import {usePage} from "@inertiajs/vue3";
import {router} from "@inertiajs/vue3";
import emitter from "@/Services/emitter";
import useNotifications from "@/Composables/useNotifications";
import ConfirmationModal from "@/Components/Modal/ConfirmationModal.vue";
import PureButtonLink from "@/Components/Button/PureButtonLink.vue";
import PureButton from "@/Components/Button/PureButton.vue";
import EllipsisVerticalIcon from "@/Icons/EllipsisVertical.vue"
import Dropdown from "@/Components/Dropdown/Dropdown.vue"
import DropdownItem from "@/Components/Dropdown/DropdownItem.vue"
import SecondaryButton from "@/Components/Button/SecondaryButton.vue"
import DangerButton from "@/Components/Button/DangerButton.vue"
import PencilSquareIcon from "@/Icons/PencilSquare.vue";
import DuplicateIcon from "@/Icons/Duplicate.vue";
import TrashIcon from "@/Icons/Trash.vue";
import ArrowUturnLeft from "../../Icons/ArrowUturnLeft.vue";
import CheckIcon from "@/Icons/Check.vue"
import DeclineIcon from "@/Icons/DeclineIcon.vue"
import useWorkspace from "../../Composables/useWorkspace";

const {t: $t} = useI18n()

const workspaceCtx = inject('workspaceCtx');
const {isWorkspaceAdminRole} = useWorkspace();
const props = defineProps({
    itemId: {
        type: String,
        required: true,
    },
    trashed: {
        type: Boolean,
        default: false
    },
    type: {
        type:String,
        required:false
    }, 
    status: {
        type:String,
        required:false
    }
})

const emit = defineEmits(['onDelete'])

const confirmationDeletion = ref(false);

const filterStatus = computed(() => {
    const pageProps = usePage().props;

    return pageProps.hasOwnProperty('filter') ? pageProps.filter.status : null;
});
 
const {notify} = useNotifications();

const deletePost = () => {
    router.delete(route('br.posts.delete', {
        workspace: workspaceCtx.id,
        post: props.itemId,
        status: filterStatus.value
    }), {
        onSuccess() {
            confirmationDeletion.value = false;
            notify('success', filterStatus.value === 'trash' ? $t("post.post_deleted_permanently") : $t("post.post_moved_to_trash"))
            emit('onDelete')
            emitter.emit('postDelete', props.itemId);
        }
    })
}

const duplicate = () => {
    router.post(route('br.posts.duplicate', {workspace: workspaceCtx.id, post: props.itemId}), {}, {
        onSuccess() {
            notify('success', $t('post.post_duplicated'))
        }
    })
}
 
const postApprove = (type) => {  
    let postNow = true;
    if(type == 'post_now'){
        axios.post(route('br.posts.schedule', { 
            workspace: workspaceCtx.id, 
            post: props.itemId,
            isWorkspaceAdminRole: isWorkspaceAdminRole.value  
            
            }), {
            postNow
        }).then((response) => {
             
            notify('success', response.data.message, {
                name: $t("post.view_in_calendar"),
                href: route('br.calendar', { workspace: workspaceCtx.id, date: response.data.date })
            });

            router.visit(route('br.posts.index', { workspace: workspaceCtx.id }));
        }).catch((error) => {
            console.log(error)
            handleValidationError(error);
        }).finally(() => {
           console.log('Done')
        })
    }else{
             axios.post(route('br.posts.addToQueue', {
                workspace: workspaceCtx.id,
                post: props.itemId,
                isWorkspaceAdminRole: isWorkspaceAdminRole.value
            }), {}).then((response) => { 
                notify('success', response.data.message, {
                    name: $t("post.view_in_calendar"),
                    href: route('br.calendar', { workspace: workspaceCtx.id, date: response.data.date })
                });

                router.visit(route('br.posts.index', { workspace: workspaceCtx.id }));
            }).catch((error) => {
                console.log(error)
                handleValidationError(error);
            }).finally(() => {
                console.log('Done');
            })
    }
}
const postDecline = () => {  
            axios.post(route('br.posts.declinePost', {
                workspace: workspaceCtx.id,
                post: props.itemId 
            }), {}).then((response) => { 
                notify('success', response.data.message);

                router.visit(route('br.posts.index', { workspace: workspaceCtx.id }));
            }).catch((error) => { 
                handleValidationError(error);
            }).finally(() => {
                console.log('Done');
            })
}

const handleValidationError = (error) => {
    if (error.response.status !== 422) {
        notify('error', error.response.data.message);
        return;
    }

    const validationErrors = error.response.data.errors;

    const mustRefreshPage = validationErrors.hasOwnProperty('in_history') || validationErrors.hasOwnProperty('publishing');

    if (!mustRefreshPage) {
        notify('error', validationErrors);
    }

    if (mustRefreshPage) {
        router.visit(route('br.posts.edit', { workspace: workspaceCtx.id, post: postId.value }));
    }
}

const restore = () => {
    router.post(route('br.posts.restore', {workspace: workspaceCtx.id, post: props.itemId}), {}, {
        onSuccess() {
            notify('success', $t('post.post_restored'))
        }
    })
}

</script>
<template>
    <div>
    
        <div class="flex flex-row items-center gap-xs">
            <PureButtonLink :href="route('br.posts.edit', { workspace: workspaceCtx.id, post: itemId })"
                            v-tooltip="$t('general.edit')">
                <PencilSquareIcon/>
            </PureButtonLink>

            <Dropdown width-classes="w-32" placement="bottom-end">
                <template #trigger>
                    <PureButton class="mt-1">
                        <EllipsisVerticalIcon/>
                    </PureButton>
                </template>

                <template #content>
                    <template v-if="trashed">
                        <DropdownItem @click="restore" as="button">
                            <ArrowUturnLeft class="!w-5 !h-5 mr-1"/>
                            {{ $t("general.restore") }}
                        </DropdownItem>
                    </template>

                    <DropdownItem @click="duplicate" as="button">
                        <DuplicateIcon class="!w-5 !h-5 mr-1"/>
                        {{ $t("general.duplicate") }}
                    </DropdownItem>
                      
                     <DropdownItem v-if="props.status === 'pending' && isWorkspaceAdminRole" @click="postApprove(props.type)" as="button"> 
                        <CheckIcon class="!w-5 !h-5 mr-1" style="color:green"/>
                        Approve
                    </DropdownItem>
                    
                    <DropdownItem v-if="props.status === 'pending' && isWorkspaceAdminRole" @click="postDecline()" as="button"> 
                        <DeclineIcon class="!w-5 !h-5 mr-1" style="color:red"/>
                        Decline
                    </DropdownItem>

                    <DropdownItem @click="confirmationDeletion = true" as="button">
                        <TrashIcon class="!w-5 !h-5 mr-1 text-red-500"/>
                        {{ $t("general.delete") }}
                    </DropdownItem>
                </template>
            </Dropdown>
        </div>

        <ConfirmationModal :show="confirmationDeletion" variant="danger" @close="confirmationDeletion = false">
            <template #header>
                {{ $t("post.delete_post") }}
            </template>
            <template #body>
                {{ $t("post.confirm_delete_post") }}
            </template>
            <template #footer>
                <SecondaryButton @click="confirmationDeletion = false" class="mr-xs"> {{ $t("general.cancel") }}
                </SecondaryButton>
                <DangerButton @click="deletePost">{{
                        trashed ? $t("general.delete_permanently") : $t("general.delete")
                    }}
                </DangerButton>
            </template>
        </ConfirmationModal>
    </div>
</template>

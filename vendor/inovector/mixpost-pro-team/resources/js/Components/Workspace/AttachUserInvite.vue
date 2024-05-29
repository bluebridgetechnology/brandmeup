<script setup>
import {inject, ref} from "vue";
import { useI18n } from "vue-i18n";
import {useForm} from "@inertiajs/vue3";
import useNotifications from "../../Composables/useNotifications";
import DialogModal from "../Modal/DialogModal.vue";
import PrimaryButton from "../Button/PrimaryButton.vue";
import SecondaryButton from "../Button/SecondaryButton.vue";
import UserRole from "../Workspace/UserRole.vue";
import Plus from "../../Icons/Plus.vue";
import SelectUser from "../User/SelectUser.vue";

const { t: $t } = useI18n()

const routePrefix = inject('routePrefix');
const {notify} = useNotifications();

const props = defineProps({
    workspace: {
        type: Object
    },
    attachedUsers: {
        type: Array,
        default: []
    }
})

const selectedUser = ref(null);
const selectedUserName = ref(null);
const formAttach = useForm({
    email: null,
    role: 'admin',
    type:'workspace',
    name:null
});

const attach = () => {
    formAttach.transform((data) => { 
        return {
            ...data,
            email: selectedUser.value,
            name:selectedUserName.value
        }
    }).post(route('br.members.store', {workspace: props.workspace.uuid}), {
            preserveScroll: true,
            onSuccess() {
                close();
                formAttach.reset();

                notify('success', 'Invite sent successfully')
            }
        }
    );
}

const modal = ref(false);

const open = () => {
    modal.value = true;
}

const close = () => {
    modal.value = false;
    selectedUser.value = null;
}
</script>
<template>
    <SecondaryButton @click="open" size="sm">
        <Plus class="mr-xs"/>
        Invite members
    </SecondaryButton>

    <DialogModal :show="modal"
                 max-width="md"
                 :scrollable-body="true"
                 :closeable="true"
                 @close="close">
        <template #header>
           Invite members
        </template>

        <template #body> 
        <input type="text" v-model="selectedUserName" placeholder="Enter Full name"
           style="width: 100%; border: 1px solid #ccc; border-radius: 10px; padding: 10px;margin-bottom:5px;" required/>
            <input type="email" v-model="selectedUser" placeholder="Enter email address"
           style="width: 100%; border: 1px solid #ccc; border-radius: 10px; padding: 10px;" required/>
            <div v-if="formAttach.errors.email" class="text-red-500">{{ formAttach.errors.email }}</div>
            <UserRole v-model="formAttach.role" class="mt-lg"/>
        </template>

        <template #footer>
            <SecondaryButton @click="close" class="mr-xs">{{ $t('general.cancel') }}</SecondaryButton>
            <PrimaryButton @click="attach" :disabled="!selectedUser || !selectedUserName ||formAttach.processing"
                           :isLoading="formAttach.processing"> Invite
            </PrimaryButton>
        </template>
    </DialogModal>
</template>

<script setup>
import {inject} from "vue";
import {Head, Link, router} from '@inertiajs/vue3';
import {useI18n} from "vue-i18n";
import useNotifications from "../../../Composables/useNotifications"; 
import PageHeader from "@/Components/DataDisplay/PageHeader.vue";
import Panel from "@/Components/Surface/Panel.vue";
import HorizontalGroup from "@/Components/Layout/HorizontalGroup.vue";
import PrimaryButton from "../../../Components/Button/PrimaryButton.vue";
import DangerButton from "../../../Components/Button/DangerButton.vue";
import WorkspaceUsersInvite from "../../../Components/Workspace/WorkspaceUsersInvite.vue";
import PencilSquare from "../../../Icons/PencilSquare.vue";
import Trash from "../../../Icons/Trash.vue";
import ArrowTopRightOnSquare from "../../../Icons/ArrowTopRightOnSquare.vue";
import SecondaryButton from "../../../Components/Button/SecondaryButton.vue";
import ClipboardCard from "../../../Components/Util/ClipboardCard.vue";
 

const {t: $t} = useI18n()

const routePrefix = inject('routePrefix');
const confirmation = inject('confirmation');

const props = defineProps({
    workspace: {
        type: Object
    }
})

const {notify} = useNotifications();

const deleteWorkspace = () => {
    confirmation()
        .title($t("workspace.delete_workspace"))
        .description($t("workspace.confirm_delete_workspace"))
        .destructive()
        .onConfirm((dialog) => {
            dialog.isLoading(true);

            router.delete(route(`${routePrefix}.workspaces.delete`, {workspace: props.workspace.uuid}), {
                onSuccess() {
                    notify('success', $t('workspace.workspace_deleted'));
                }
            })
        })
        .show();

}
</script>
<template>
    <Head :title='$t("workspace.view_workspace")'/>

    <div class="w-full mx-auto row-py">
        <PageHeader title='Workspace members'>
            <template #description> 
                Manage workspace users
            </template>
           
        </PageHeader>

        <div class="row-px"> 
            <div class="mt-lg">
                <WorkspaceUsersInvite :workspace="workspace"/>
            </div> 
        </div>
    </div>
</template>

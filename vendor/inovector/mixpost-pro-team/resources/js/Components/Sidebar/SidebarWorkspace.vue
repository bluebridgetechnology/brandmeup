<script setup>
import {inject} from "vue";
import {Link} from '@inertiajs/vue3';
import Logo from "@/Components/DataDisplay/Logo.vue"
import MenuItem from "@/Components/Sidebar/MenuItem.vue"
import MenuDelimiter from "@/Components/Sidebar/MenuDelimiter.vue"
import MenuGroupHeader from "@/Components/Sidebar/MenuGroupHeader.vue"
import MenuGroupBody from "@/Components/Sidebar/MenuGroupBody.vue"
import DarkButtonLink from "@/Components/Button/DarkButtonLink.vue"
import PlusIcon from "@/Icons/Plus.vue"
import GridIcon from "@/Icons/Grid.vue"
import CalendarIcon from "@/Icons/Calendar.vue" 
import PhotoIcon from "@/Icons/Photo.vue"
import PackageIcon from "@/Icons/Package.vue"
import UserMenu from "@/Components/Navigation/UserMenu.vue";
import DashboardIcon from "@/Icons/Dashboard.vue";
import WebhooksIcon from "@/Icons/Webhooks.vue";
import RectangleGroup from "../../Icons/RectangleGroup.vue";
import Forward from "../../Icons/Forward.vue";
import useWorkspace from "../../Composables/useWorkspace";
import UsersIcon from "@/Icons/Users.vue"
const workspaceCtx = inject('workspaceCtx');

const {isWorkspaceAdminRole} = useWorkspace(); 
</script>
<template>
    <div class="w-full h-full flex flex-col py-2xl bg-white border-r border-gray-200">
        <div class="relative mb-12 px-xl">
            <Link :href="route('br.dashboard', {workspace: workspaceCtx.id})">
                <Logo/>
            </Link>
        </div>

        <div class="flex px-xl">
            <DarkButtonLink :href="route('br.posts.create', {workspace: workspaceCtx.id})" class="w-full">
                <PlusIcon class="mr-xs"/>
                {{$t("media.create_post")}}
            </DarkButtonLink>
        </div>

        <div class="flex flex-col space-y-lg overflow-y-auto px-xl mt-2xl h-full">
            <MenuGroupBody>
                <MenuItem :url="route('br.dashboard', {workspace: workspaceCtx.id})"
                          :active="$page.component === 'Workspace/Dashboard'">
                    <template #icon>
                        <DashboardIcon/>
                    </template>
                    {{ $t("dashboard.dashboard") }}
                </MenuItem>
            </MenuGroupBody>
            <MenuDelimiter/>
            <MenuGroupHeader :create-url="route('br.posts.create', {workspace: workspaceCtx.id})">
                {{$t('post.content')}}
                <template #icon>
                    <PlusIcon/>
                </template>
            </MenuGroupHeader>
            <MenuGroupBody>
                <MenuItem :url="route('br.posts.index', {workspace: workspaceCtx.id})"
                          :active="$page.component === 'Workspace/Posts/Index'">
                    <template #icon>
                        <GridIcon/>
                    </template>
                    {{$t('post.posts')}}
                </MenuItem>
                <MenuItem :url="route('br.calendar', {workspace: workspaceCtx.id})"
                          :active="$page.component === 'Workspace/Calendar'">
                    <template #icon>
                        <CalendarIcon/>
                    </template>
                    {{$t('calendar.calendar')}}
                </MenuItem>
                <MenuItem :url="route('br.media.index', {workspace: workspaceCtx.id})"
                          :active="$page.component === 'Workspace/Media'">
                    <template #icon>
                        <PhotoIcon/>
                    </template>
                    {{$t('media.media_library')}}
                </MenuItem>
                <MenuItem :url="route('br.templates.index', {workspace: workspaceCtx.id})"
                          :active="$page.component === 'Workspace/Templates/Index'">
                    <template #icon>
                        <RectangleGroup/>
                    </template>
                    {{$t('template.templates')}}
                </MenuItem>
                <MenuItem v-if="isWorkspaceAdminRole" :url="route('br.members.index', {workspace: workspaceCtx.id})"
                          :active="$page.component === 'Workspace/Members/Index'">
                    <template #icon>
                        <UsersIcon />
                    </template>
                    Invite Members
                </MenuItem>
            </MenuGroupBody>

            <template v-if="isWorkspaceAdminRole">
                <MenuDelimiter/>
                <MenuGroupHeader :create-url="route('br.posts.create', {workspace: workspaceCtx.id})">
                    {{$t('post.configuration')}}
                </MenuGroupHeader>
                <MenuGroupBody>
                    <MenuItem :url="route('br.postingSchedule.index', {workspace: workspaceCtx.id})"
                              :active="$page.component === 'Workspace/PostingSchedule'">
                        <template #icon>
                            <Forward/>
                        </template>
                        {{ $t('posting_schedule.posting_schedule') }}
                    </MenuItem>
                    <MenuItem :url="route('br.accounts.index', {workspace: workspaceCtx.id})"
                              :active="$page.component === 'Workspace/Accounts/Accounts'">
                        <template #icon>
                            <PackageIcon/>
                        </template>
                        {{ $t('post.accounts') }}
                    </MenuItem>
                    <MenuItem :url="route('br.webhooks.index', {workspace: workspaceCtx.id})"
                              :active="$page.component === 'Workspace/Webhooks/Index'">
                        <template #icon>
                            <WebhooksIcon/>
                        </template>
                        {{ $t('webhook.webhooks') }}
                    </MenuItem>
                </MenuGroupBody>
            </template>
        </div>

        <div class="px-xl pt-xl">
            <UserMenu/>
        </div>
    </div>
</template>

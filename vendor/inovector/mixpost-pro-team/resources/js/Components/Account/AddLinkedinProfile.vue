<script setup>
import {inject} from "vue";
import {Link} from '@inertiajs/vue3'
import ProviderIcon from "./ProviderIcon.vue";

const workspaceCtx = inject('workspaceCtx');
</script>
<template>
    <Link :href="route('br.accounts.add', {workspace: workspaceCtx.id, provider: 'linkedin'})"
          method="post"
          as="button"
          type="button"
          class="w-full flex items-center px-lg py-4 hover:bg-twitter hover:bg-opacity-20 ease-in-out duration-200">
        <span class="flex mr-4">
            <ProviderIcon provider="linkedin"/>
        </span>
        <span class="flex flex-col items-start">
            <span class="font-semibold">LinkedIn Profile</span>
            <span>{{ $t("service.linkedin.connect_profile") }}</span>
        </span>
    </Link>
</template>

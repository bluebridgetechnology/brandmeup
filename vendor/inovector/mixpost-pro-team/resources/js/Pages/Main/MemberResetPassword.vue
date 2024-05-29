<script setup>
import {ref} from "vue";
import {Head, useForm, Link} from '@inertiajs/vue3';
import useNotifications from "@/Composables/useNotifications";
import MinimalLayout from '@/Layouts/Minimal.vue';
import Preferences from "../../Components/Profile/Preferences.vue";
import UserAccount from "../../Components/Profile/UserAccount.vue";
import TwoFactorAuth from "../../Components/Profile/TwoFactorAuth.vue";
import Password from "../../Components/Profile/Password.vue";
import SecondaryButton from "../../Components/Button/SecondaryButton.vue";
import ActionSection from "../../Components/Surface/ActionSection.vue";
import SectionBorder from "../../Components/Surface/SectionBorder.vue";
import PageHeader from "../../Components/DataDisplay/PageHeader.vue";
import ArrowLeft from "../../Icons/ArrowLeft.vue";

defineOptions({layout: MinimalLayout})

const props = defineProps(['settings', 'locales', 'timezone_list', 'user_has_two_factor_auth_enabled'])
 

const {notify} = useNotifications();

const tab = ref('account');
</script>
<template>
    <Head title="Change Password"/>
 
    <div class="row-py w-full mx-auto !pt-0">
        <div class="w-full mb-lg">
            
            <div class="mt-2xl sm:mt-0">
                <ActionSection>
                    <template #title>{{ $t('auth.update_password') }}</template>
                    <template #description>{{ $t('auth.confirm_secure_password') }}
                    </template>

                    <Password/>
                </ActionSection>
            </div>
        </div>
    </div>
</template>

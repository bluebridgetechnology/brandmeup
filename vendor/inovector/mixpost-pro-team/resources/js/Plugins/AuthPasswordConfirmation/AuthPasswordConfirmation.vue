<script setup>
import {inject} from "vue";
import {router, useForm} from "@inertiajs/vue3";
import SecondaryButton from "@/Components/Button/SecondaryButton.vue";
import PrimaryButton from "../../Components/Button/PrimaryButton.vue";
import Label from "../../Components/Form/Label.vue";
import Input from "../../Components/Form/Input.vue";
import Error from "../../Components/Form/Error.vue";
import DialogModal from "../../Components/Modal/DialogModal.vue";
import HorizontalGroup from "../../Components/Layout/HorizontalGroup.vue";

const routePrefix = inject('routePrefix');
const authPasswordConfirmation = inject('authPasswordConfirmation');

const {data} = authPasswordConfirmation();

const form = useForm({
    password: '',
});

const confirm = () => {
    form.post(route(`${routePrefix}.profile.confirmPassword`), {
        preserveScroll: true,
        onSuccess() {
            handleOnConfirmEvent();
            close();
        }
    });
}
const handleOnConfirmEvent = () => {
    const onConfirm = data.value.onConfirm;

    if (typeof onConfirm === 'function') {
        data.value.onConfirm();
    }
};

const close = () => {
    authPasswordConfirmation().reset();
    form.reset();
    form.clearErrors();
}

router.on('navigate', () => {
    if (data.value.show) {
        close();
    }
})
</script>
<template>
    <DialogModal :show="data.show"
                 max-width="lg"
                 :closeable="true"
                 :scrollable-body="true"
                 zIndexClass="z-30"
                 @close="close">
        <template #header>
            {{ $t('auth.confirm_password') }}
        </template>

        <template #body>
            <template v-if="data.show">
                <div>{{ $t('profile.security_confirm_password') }}</div>

                <HorizontalGroup class="mt-lg">
                    <template #title>
                        <label for="password">{{ $t('auth.password') }}</label>
                    </template>

                    <Input v-model="form.password" :error="form.errors.password" type="password" id="password"
                           class="w-full"
                           autocomplete="password"/>

                    <template #footer>
                        <Error :message="form.errors.password"/>
                    </template>
                </HorizontalGroup>
            </template>
        </template>

        <template #footer>
            <SecondaryButton @click="close" class="mr-xs">{{ $t('general.cancel') }}</SecondaryButton>
            <PrimaryButton @click="confirm"
                           :disabled="form.processing"
                           :isLoading="form.processing"
                           class="mr-xs">{{ $t('general.confirm') }}
            </PrimaryButton>
        </template>
    </DialogModal>
</template>

import {computed, inject} from "vue";
import {filter, isEmpty} from "lodash";

const usePost = () => {
    const postCtx = inject('postCtx')

    const accountsHitTextLimit = computed(() => {
        return filter(postCtx.textLimit, {hit: true});
    })

    const accountsHitMediaLimit = computed(() => {
        return filter(postCtx.mediaLimit, (item) => {
            return item.photos.hit || item.videos.hit || item.gifs.hit || item.mixing.hit;
        });
    })

    const validationErrors = computed(() => {
        return postCtx.errors;
    })

    const addValidationError = (key, account, message) => {
        postCtx.errors[`account_${account.id}_${key}`] = {
            account: {
                id: account.id,
                name: account.name,
                provider: account.provider,
            },
            key,
            message,
        };
    }

    const removeValidationError = (key, account) => {
        delete postCtx.errors[`account_${account.id}_${key}`];
    }

    const validationPassed = computed(() => {
        return accountsHitTextLimit.value.length === 0 &&
            accountsHitMediaLimit.value.length === 0 &&
            isEmpty(validationErrors.value);
    });

    return {
        accountsHitTextLimit,
        accountsHitMediaLimit,
        validationErrors,
        addValidationError,
        removeValidationError,
        validationPassed
    }
}

export default usePost;

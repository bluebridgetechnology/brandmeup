import {computed} from "vue";
import {usePage} from "@inertiajs/vue3";

const usePost = () => {
    const post = computed(() => {
        return usePage().props.post;
    });

    const postId = computed(() => {
        return post.value ? post.value.id : null;
    });

    const isInHistory = computed(() => {
        if (!post.value) {
            return false;
        }

        return ['published', 'failed'].includes(post.value.status)
    })

    const isScheduleProcessing = computed(() => {
        if (!post.value) {
            return false;
        }

        return post.value.status === 'publishing';
    })

    const editAllowed = computed(() => {
        return !(isInHistory.value || isScheduleProcessing.value || (post.value && post.value.trashed));
    });

    return {
        postId,
        isInHistory,
        isScheduleProcessing,
        editAllowed
    }
}

export default usePost;

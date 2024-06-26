<script setup>
import {computed, ref} from "vue";
import EditorButton from "../../Button/EditorButton.vue";
import Flex from "../../Layout/Flex.vue";
import DialogModal from "../../Modal/DialogModal.vue";
import Spotlight from "./Spotlight.vue";
import TextGenerator from "./TextGenerator.vue";
import TextModifier from "./TextModifier.vue";
import Sparkles from "../../../Icons/Sparkles.vue";

const emits = defineEmits(['insert', 'replace', 'close']);

const props = defineProps({
    text: {
        type: String,
        required: true,
    },
    characterLimit: {
        type: Number,
        default: 1000,
    }
})

const showModal = ref(false);
const module = ref('spotlight');
const lastCommand = ref('');

const textIsEmpty = computed(() => {
    return props.text === '' || props.text === '<div></div>';
});

const openModal = () => {
    if (textIsEmpty.value) {
        module.value = 'generator';
    }

    showModal.value = true;
}

const closeModal = () => {
    showModal.value = false;
    module.value = 'spotlight';
}

const selectModule = (command) => {
    if (command !== 'generate') {
        module.value = 'modifier';
        lastCommand.value = command;
        return;
    }

    module.value = 'generator';
}

const insert = (text) => {
    emits('insert', text);
    closeModal();
}

const replace = (text) => {
    emits('replace', text);
    closeModal();
}
</script>
<template>
    <div>
        <EditorButton @click="openModal" v-tooltip="'AI Assist'">
            <Sparkles/>
        </EditorButton>

        <DialogModal :show="showModal"
                     @close="closeModal"
                     max-width="md"
                     :closeable="true"
                     :scrollable-body="true">
            <template #header>
                <Flex class="items-center">
                    <Sparkles class="text-stone-800"/>
                    {{ $t('ai.ai_assist') }}
                </Flex>
            </template>

            <template #body>
                <template v-if="module === 'spotlight'">
                    <Spotlight @selected-command="selectModule"/>
                </template>

                <template v-if="module === 'generator'">
                    <TextGenerator
                        @insert="insert"
                        :characterLimit="characterLimit"
                    />
                </template>

                <template v-if="module === 'modifier'">
                    <TextModifier @replace="replace"
                                  :text="text"
                                  :characterLimit="characterLimit"
                                  :command="lastCommand"/>
                </template>
            </template>
        </DialogModal>
    </div>
</template>

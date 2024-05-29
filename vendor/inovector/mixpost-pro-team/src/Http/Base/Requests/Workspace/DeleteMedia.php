<?php

namespace Inovector\Mixpost\Http\Base\Requests\Workspace;

use Illuminate\Foundation\Http\FormRequest;
use Inovector\Mixpost\Models\Media;

class DeleteMedia extends FormRequest
{
    public function rules(): array
    {
        return [
            'items' => ['required', 'array']
        ];
    }

    public function handle(): void
    {
        foreach ($this->input('items') as $id) {
            $media = Media::find($id);

            if (!$media) {
                continue;
            }

            $media->deleteFiles();
            $media->delete();
        }
    }
}

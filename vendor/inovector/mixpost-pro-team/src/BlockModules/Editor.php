<?php

namespace Inovector\Mixpost\BlockModules;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Inovector\Mixpost\Models\Block;

class Editor
{
    public function render(Block $block): Factory|View|Application
    {
        return view('mixpost::blocks_modules.Editor', [
            'block' => $block
        ]);
    }
}

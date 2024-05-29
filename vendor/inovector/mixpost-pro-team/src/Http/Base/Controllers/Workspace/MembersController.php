<?php

namespace Inovector\Mixpost\Http\Base\Controllers\Workspace;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Inertia\Inertia; 
use Inertia\Response;
use Inovector\Mixpost\Facades\ServiceManager;
use Inovector\Mixpost\Http\Base\Resources\TemplateResource;
use Inovector\Mixpost\Models\Template;
use Inovector\Mixpost\Http\Base\Resources\WorkspaceResource; 
use Inovector\Mixpost\Models\Workspace;
use Inovector\Mixpost\Http\Base\Requests\Admin\InviteWorkspaceUser;
use Illuminate\Http\RedirectResponse;
class MembersController extends Controller
{
    public function index(Request $request): Response
    {
        
        $workspace = Workspace::firstOrFailByUuid($request->route('workspace'));
        $workspace->load('users'); 
        return Inertia::render('Workspace/Members/Index', [ 
            'workspace' => new WorkspaceResource($workspace)
        ]);
    }

    

    public function create(): Response
    {
        return Inertia::render('Workspace/Templates/CreateEdit', [
            'template' => null,
        ]);
    }
    public function store(InviteWorkspaceUser $addWorkspaceUser): RedirectResponse
    { 
        $addWorkspaceUser->handle();
       
        return redirect()->back();
    }
    public function edit(Request $request): Response
    {
        $template = Template::firstOrFailByUuid($request->route('template'));

        return Inertia::render('Workspace/Templates/CreateEdit', [
            'template' => new TemplateResource($template)
        ]);
    }
}

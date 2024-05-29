import{i as $,c as g,a as e,b as s,e as i,w as t,g as c,F as k,o as m,Z as w,f as l,t as r,k as _,a5 as C,h as v,ah as b,a7 as y,ag as f,ak as T}from"./app.3dbb9f4f.js";import{u as B}from"./useTemplate.8ac1edac.js";import{_ as V}from"./PageHeader.5278f6a5.js";import{_ as E}from"./Panel.1435ce07.js";import{T as F}from"./Trash.108c227d.js";import{_ as L}from"./NoResult.f7bfb2e6.js";import{E as N}from"./EllipsisVertical.6eb78bb2.js";import{_ as P}from"./Masonry.1a75e465.js";import{_ as j}from"./TemplateItem.25bc79df.js";import{_ as q,L as x}from"./ListItem.b96016ef.js";import"./usePostVersions.f18e2fc4.js";import"./Flex.781629fc.js";import"./MediaFile.dd3a1c78.js";import"./ExclamationCircle.5d8a3fe5.js";import"./EditorReadOnly.f0e86aff.js";import"./index.d961b7a1.js";import"./Variable.cb6cad2c.js";const z={class:"row-py"},A={class:"w-full row-px"},I={class:"relative mt-lg"},S={class:"flex justify-end"},re={__name:"Index",props:{templates:{type:Array,required:!0}},setup(n){const p=$("workspaceCtx"),{createPost:d,formatTemplateContent:u,deleteTemplate:h}=B();return(a,D)=>(m(),g(k,null,[e(s(w),{title:a.$t("template.templates")},null,8,["title"]),i("div",z,[e(V,{title:a.$t("template.templates")},{description:t(()=>[l(r(a.$t("template.templates_desc")),1)]),_:1},8,["title"]),i("div",A,[e(s(v),{href:a.route("br.templates.create",{workspace:s(p).id})},{default:t(()=>[e(_,{size:"sm"},{default:t(()=>[e(C,{class:"mr-xs"}),l(" "+r(a.$t("template.create_template")),1)]),_:1})]),_:1},8,["href"]),i("div",I,[n.templates.length?(m(),c(P,{key:1,items:n.templates,columns:3},{default:t(({item:o})=>[e(x,{class:"group"},{default:t(()=>[e(q,{withClassesForLast:!1,class:"!p-lg bg-white rounded-lg"},{default:t(()=>[e(j,{template:o},{action:t(()=>[i("div",S,[e(_,{onClick:()=>{s(d)(s(u)(o.content))},size:"sm",class:"group-visible mr-xs"},{default:t(()=>[l(r(a.$t("general.use")),1)]),_:2},1032,["onClick"]),e(b,{"width-classes":"w-32",placement:"bottom-end"},{trigger:t(()=>[e(y,{class:"mt-1"},{default:t(()=>[e(N)]),_:1})]),content:t(()=>[e(f,{linkAs:"a",href:a.route("br.templates.edit",{workspace:s(p).id,template:o.id})},{default:t(()=>[e(T,{class:"!w-5 !h-5 mr-1"}),l(" "+r(a.$t("general.edit")),1)]),_:2},1032,["href"]),e(f,{onClick:G=>s(h)(o),as:"button"},{default:t(()=>[e(F,{class:"!w-5 !h-5 mr-1 text-red-500"}),l(" "+r(a.$t("general.delete")),1)]),_:2},1032,["onClick"])]),_:2},1024)])]),_:2},1032,["template"])]),_:2},1024)]),_:2},1024)]),_:1},8,["items"])):(m(),c(E,{key:0},{default:t(()=>[e(L,null,{default:t(()=>[l(r(a.$t("template.do_not_have_templates")),1)]),_:1})]),_:1}))])])])],64))}};export{re as default};
import{u as U,i as k,I as A,J as M,cp as R,ae as W,af as O,l as _,al as S,R as z,c as w,a as e,b as o,e as B,w as t,j as I,F as P,o as n,Z as J,f as m,t as u,k as Z,a5 as q,h as G,V as H,g as b,aE as T,r as K}from"./app.3dbb9f4f.js";import{u as Q}from"./useRouter.19704d13.js";import{u as X}from"./useSelectable.1e30f95c.js";import{_ as Y}from"./PageHeader.5278f6a5.js";import{_ as ee}from"./Panel.1435ce07.js";import{_ as V}from"./Checkbox.1a8805b0.js";import{T as oe,a as te,_ as i}from"./TableCell.4ea0e0fc.js";import{_ as se}from"./PureDangerButton.aa10c267.js";import{_ as ae}from"./SelectableBar.3cd2e649.js";import{_ as re}from"./Pagination.b044d7e9.js";import{_ as ce}from"./NoResult.f7bfb2e6.js";import{T as le}from"./Trash.108c227d.js";import{_ as ne}from"./WebhookItem.7763fc6b.js";import"./Flex.781629fc.js";import"./ChevronLeft.cbb2bb07.js";import"./PureButtonLink.52cd3818.js";import"./DropdownButton.3e12eb5b.js";import"./EllipsisVertical.6eb78bb2.js";import"./QueueList.71914ee1.js";const ie={class:"w-full mx-auto row-py"},de={class:"w-full row-px mt-lg"},me={key:0,class:"mt-lg"},Ie={__name:"Index",props:{filter:{type:Object,default:{}},records:{type:Object}},setup(r){const{t:a}=U(),f=r,v=k("routePrefix"),p=k("workspaceCtx"),j=k("confirmation"),{selectedRecords:d,putPageRecords:x,toggleSelectRecordsOnPage:h,deselectRecord:g,deselectAllRecords:$}=X(),{onError:E}=Q(),y=A({keyword:f.filter.keyword}),C=()=>f.records.data.map(s=>s.id),N=()=>{j().title(a("webhook.delete_webhooks")).description(a("webhook.delete_webhooks_confirm")).destructive().onConfirm(s=>{D(s)}).show()},D=s=>{s.isLoading(!0),S.delete(route(`${v}.webhooks.deleteMultiple`,{workspace:p.id}),{data:{webhooks:d.value},preserveScroll:!0,onSuccess(){s.reset(),$()},onError(c){E(c,()=>{D(s)})},onFinish(){s.isLoading(!1)}})};return M(()=>{x(C()),R.on("webhookDeleted",s=>{g(s)})}),W(()=>{R.off("webhookDeleted")}),O(()=>_.exports.cloneDeep(y.value),_.exports.throttle(()=>{S.get(route("br.webhooks.index",{workspace:p.id}),_.exports.pickBy(y.value),{preserveState:!0,only:["records","filter"]})},300)),O(()=>f.records.data,()=>{x(C())}),(s,c)=>{const F=z("tooltip");return n(),w(P,null,[e(o(J),{title:o(a)("webhook.webhooks")},null,8,["title"]),B("div",ie,[e(Y,{title:o(a)("webhook.webhooks")},{description:t(()=>[m(u(o(a)("webhook.webhooks_desc")),1)]),_:1},8,["title"]),B("div",de,[e(o(G),{href:s.route(`${o(v)}.webhooks.create`,{workspace:o(p).id})},{default:t(()=>[e(Z,{size:"sm"},{icon:t(()=>[e(q)]),default:t(()=>[m(" "+u(o(a)("webhook.create_webhook")),1)]),_:1})]),_:1},8,["href"]),e(ae,{count:o(d).length,onClose:o($)},{default:t(()=>[H((n(),b(se,{onClick:N},{default:t(()=>[e(le)]),_:1})),[[F,o(a)("general.delete")]])]),_:1},8,["count","onClose"]),e(ee,{"with-padding":!1,class:"mt-lg"},{default:t(()=>[e(oe,null,{head:t(()=>[e(te,null,{default:t(()=>[e(i,{component:"th",scope:"col",class:"w-10"},{default:t(()=>[e(V,{checked:o(h),"onUpdate:checked":c[0]||(c[0]=l=>T(h)?h.value=l:null),disabled:!r.records.meta.total},null,8,["checked","disabled"])]),_:1}),e(i,{component:"th",scope:"col",class:"w-10"}),e(i,{component:"th",scope:"col"},{default:t(()=>[m(u(o(a)("general.name")),1)]),_:1}),e(i,{component:"th",scope:"col"},{default:t(()=>[m(u(o(a)("webhook.callback_url")),1)]),_:1}),e(i,{component:"th",scope:"col"},{default:t(()=>[m(u(o(a)("post.status")),1)]),_:1}),e(i,{component:"th",scope:"col"})]),_:1})]),body:t(()=>[(n(!0),w(P,null,K(r.records.data,l=>(n(),b(ne,{key:l.id,item:l,onOnDelete:()=>{o(g)(l.id)}},{checkbox:t(()=>[e(V,{checked:o(d),"onUpdate:checked":c[1]||(c[1]=L=>T(d)?d.value=L:null),value:l.id},null,8,["checked","value"])]),_:2},1032,["item","onOnDelete"]))),128))]),_:1}),r.records.meta.total?I("",!0):(n(),b(ce,{key:0,class:"py-md px-md"}))]),_:1}),r.records.meta.links.length>3?(n(),w("div",me,[e(re,{meta:r.records.meta,links:r.records.links},null,8,["meta","links"])])):I("",!0)])])],64)}}};export{Ie as default};
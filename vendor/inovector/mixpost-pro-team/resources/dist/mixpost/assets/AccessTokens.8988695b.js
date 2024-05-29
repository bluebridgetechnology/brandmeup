import{u as N,i as V,R as M,o as _,g as C,w as e,a as t,A as X,f as r,t as s,b as o,V as q,al as S,cp as P,I as A,ct as Y,c as T,k as R,e as $,$ as E,ab as O,j as D,S as G,ac as F,F as L,d as ee,J as te,af as oe,Z as se,h as ae,aE as I,r as ne}from"./app.3dbb9f4f.js";import{u as re}from"./useSelectable.1e30f95c.js";import{_ as le}from"./Minimal.3c70d183.js";import{_ as ie}from"./PageHeader.5278f6a5.js";import{A as ce}from"./ArrowLeft.34b8ab3d.js";import{_ as H}from"./Flex.781629fc.js";import{T as J}from"./Trash.108c227d.js";import{_ as Z}from"./PureDangerButton.aa10c267.js";import{_ as de}from"./SelectableBar.3cd2e649.js";import{_ as ue}from"./Panel.1435ce07.js";import{_ as f,a as z,T as me}from"./TableCell.4ea0e0fc.js";import{_ as U}from"./Checkbox.1a8805b0.js";import{_ as fe}from"./NoResult.f7bfb2e6.js";import{u as K}from"./useRouter.19704d13.js";import{u as _e}from"./useAPIForm.db22c2d8.js";import{V as j}from"./VerticalGroup.1aa58a90.js";import{_ as B}from"./LabelSuffix.6a36f138.js";import{_ as pe}from"./Alert.68363348.js";import{_ as ke}from"./Select.2234a951.js";import{_ as $e}from"./ClipboardCard.c684d070.js";import{_ as he}from"./SuccessButton.4819957a.js";import{_ as ve}from"./Pagination.b044d7e9.js";import"./ClipboardButton.376defca.js";import"./Clipboard.92827572.js";import"./ChevronLeft.cbb2bb07.js";const ge={__name:"TokenItem",props:{item:{type:Object,required:!0}},setup(c){const{t:l}=N(),g=V("routePrefix"),w=V("confirmation"),h=c,{onError:d}=K(),a=()=>{w().title(l("access_token.delete")).description(l("access_token.delete_confirm")).destructive().onConfirm(u=>{v(u)}).show()},v=u=>{u.isLoading(!0),S.delete(route(`${g}.profile.accessTokens.delete`,{token:h.item.id}),{onSuccess(){u.reset(),P.emit("tokenDelete",h.item.id)},onError(b){d(b,()=>{v(u)})},onFinish(){u.isLoading(!1)}})};return(u,b)=>{const y=M("tooltip");return _(),C(z,{hoverable:!0},{default:e(()=>[t(f,{class:"w-10"},{default:e(()=>[X(u.$slots,"checkbox")]),_:3}),t(f,null,{default:e(()=>[r(s(c.item.name),1)]),_:1}),t(f,null,{default:e(()=>[r(s(c.item.last_used_at?c.item.last_used_at:o(l)("access_token.never_used")),1)]),_:1}),t(f,null,{default:e(()=>[r(s(c.item.expires_at),1)]),_:1}),t(f,null,{default:e(()=>[r(s(c.item.created_at),1)]),_:1}),t(f,null,{default:e(()=>[q((_(),C(Z,{onClick:a},{default:e(()=>[t(J,{class:"!w-5 !h-5"})]),_:1})),[[y,o(l)("general.delete")]])]),_:1})]),_:3})}}},be={for:"token_name"},ye={for:"expiration"},xe={value:"days-7"},we={value:"days-30"},Ce={value:"days-60"},Te={value:"days-90"},Ve={value:"never-expires"},Se={value:"custom"},De={__name:"CreateUserToken",emits:["added"],setup(c,{emit:l}){const g=V("routePrefix"),w=l,h=A(!1),d=A("");A(null);const a=_e({name:"",expiration:"days-7",expires_at:""}),v=()=>{h.value=!0},u=()=>{h.value=!1,a.reset(),a.clearErrors()},{onCatch:b}=Y(),y=()=>{a.post(route(`${g}.profile.accessTokens.store`),{onSuccess(n){u(),a.reset(),d.value=n.plain_text_token,w("added")},onError(n){b(n,y)}})};return(n,m)=>(_(),T(L,null,[t(R,{onClick:v},{default:e(()=>[r(s(n.$t("access_token.create")),1)]),_:1}),t(F,{show:h.value,"max-width":"md",closeable:!0,"scrollable-body":!0,onClose:u},{header:e(()=>[r(s(n.$t("access_token.create")),1)]),body:e(()=>[t(j,null,{title:e(()=>[$("label",be,[r(s(n.$t("general.name"))+" ",1),t(B,{danger:!0},{default:e(()=>[r("*")]),_:1})])]),footer:e(()=>[t(E,{message:o(a).errors.name},null,8,["message"])]),default:e(()=>[t(O,{type:"text",modelValue:o(a).name,"onUpdate:modelValue":m[0]||(m[0]=p=>o(a).name=p),error:o(a).errors.name!==void 0,id:"token_name",placeholder:n.$t("access_token.name_placeholder")},null,8,["modelValue","error","placeholder"])]),_:1}),t(j,{class:"mt-lg"},{title:e(()=>[$("label",ye,[r(s(n.$t("access_token.expiration"))+" ",1),t(B,{danger:!0},{default:e(()=>[r("*")]),_:1})])]),footer:e(()=>[t(E,{message:o(a).errors.expiration},null,8,["message"]),t(E,{message:o(a).errors.expires_at},null,8,["message"])]),default:e(()=>[t(H,{class:"w-full"},{default:e(()=>[t(ke,{modelValue:o(a).expiration,"onUpdate:modelValue":m[1]||(m[1]=p=>o(a).expiration=p),error:o(a).errors.expiration!==void 0,id:"expiration"},{default:e(()=>[$("option",xe,s(n.$t("calendar.days",{count:7})),1),$("option",we,s(n.$t("calendar.days",{count:30})),1),$("option",Ce,s(n.$t("calendar.days",{count:60})),1),$("option",Te,s(n.$t("calendar.days",{count:90})),1),$("option",Ve,s(n.$t("access_token.never_expires")),1),$("option",Se,s(n.$t("general.custom")),1)]),_:1},8,["modelValue","error"]),o(a).expiration==="custom"?(_(),C(O,{key:0,type:"date",modelValue:o(a).expires_at,"onUpdate:modelValue":m[2]||(m[2]=p=>o(a).expires_at=p),error:o(a).errors.expires_at,id:"expiration"},null,8,["modelValue","error"])):D("",!0)]),_:1})]),_:1})]),footer:e(()=>[t(G,{onClick:u,class:"mr-xs"},{default:e(()=>[r(s(n.$t("general.cancel")),1)]),_:1}),t(R,{onClick:y,disabled:o(a).processing,isLoading:o(a).processing},{default:e(()=>[r(s(n.$t("general.create")),1)]),_:1},8,["disabled","isLoading"])]),_:1},8,["show"]),t(F,{show:d.value!=="","max-width":"xl",closeable:!0,"scrollable-body":!0,onClose:m[4]||(m[4]=p=>d.value="")},{header:e(()=>[r(s(n.$t("access_token.create")),1)]),body:e(()=>[d.value?(_(),T(L,{key:0},[t(pe,{variant:"warning",closeable:!1},{default:e(()=>[r(s(n.$t("access_token.copy_token")),1)]),_:1}),t($e,{class:"mt-lg"},{default:e(()=>[r(s(d.value),1)]),_:1})],64)):D("",!0)]),footer:e(()=>[t(he,{onClick:m[3]||(m[3]=p=>d.value="")},{default:e(()=>[r(s(n.$t("system.stored_safely")),1)]),_:1})]),_:1},8,["show"])],64))}},Le={class:"row-py w-full mx-auto !pt-0"},Ae={key:0,class:"mt-lg"},Ee=ee({layout:le}),at=Object.assign(Ee,{__name:"AccessTokens",props:["tokens"],setup(c){const{t:l}=N(),g=c,w=V("routePrefix"),h=V("confirmation"),{selectedRecords:d,putPageRecords:a,toggleSelectRecordsOnPage:v,deselectRecord:u,deselectAllRecords:b}=re(),y=()=>g.tokens.data.map(i=>i.id);te(()=>{a(y()),P.on("tokenDelete",i=>{u(i)})}),oe(()=>g.tokens.data,()=>{a(y())});const{onError:n}=K(),m=()=>{h().title(l("access_token.delete_items")).description(l("access_token.delete_items_confirm")).destructive().onConfirm(i=>{i.isLoading(!0),S.delete(route(`${w}.profile.accessTokens.deleteMultiple`),{data:{tokens:d.value},preserveScroll:!0,onSuccess(){i.reset(),b()},onError(k){n(k,()=>{p(i)})},onFinish(){i.isLoading(!1)}})}).show()},p=i=>{i.isLoading(!0),S.delete(route(`${w}.profile.accessTokens.deleteMultiple`),{data:{tokens:d.value},preserveScroll:!0,onSuccess(){i.reset(),P.emit("tokenDelete",g.item.id)},onError(k){n(k,()=>{p(i)})},onFinish(){i.isLoading(!1)}})};return(i,k)=>{const Q=M("tooltip");return _(),T(L,null,[t(o(se),{title:o(l)("access_token.access_tokens")},null,8,["title"]),t(ie,{title:o(l)("access_token.access_tokens"),class:"!px-0"},{description:e(()=>[r(s(o(l)("access_token.desc")),1)]),default:e(()=>[t(o(ae),{href:i.route("br.home"),class:"flex items-center link"},{default:e(()=>[t(G,{hiddenTextOnSmallScreen:!0},{icon:e(()=>[t(ce)]),default:e(()=>[r(" "+s(o(l)("profile.back_dashboard")),1)]),_:1})]),_:1},8,["href"])]),_:1},8,["title"]),$("div",Le,[t(de,{count:o(d).length,onClose:o(b)},{default:e(()=>[q((_(),C(Z,{onClick:m},{default:e(()=>[t(J)]),_:1})),[[Q,o(l)("general.delete")]])]),_:1},8,["count","onClose"]),t(H,null,{default:e(()=>[t(De,{onAdded:k[0]||(k[0]=x=>o(S).get(i.route("br.profile.accessTokens.index"),{},{only:["tokens"],preserveState:!0,preserveScroll:!0}))})]),_:1}),t(ue,{"with-padding":!1,class:"mt-lg"},{default:e(()=>[t(me,null,{head:e(()=>[t(z,null,{default:e(()=>[t(f,{component:"th",scope:"col",class:"w-10"},{default:e(()=>[t(U,{checked:o(v),"onUpdate:checked":k[1]||(k[1]=x=>I(v)?v.value=x:null),disabled:!c.tokens.data.length},null,8,["checked","disabled"])]),_:1}),t(f,{component:"th",scope:"col"},{default:e(()=>[r(s(o(l)("general.name")),1)]),_:1}),t(f,{component:"th",scope:"col"},{default:e(()=>[r(s(o(l)("access_token.last_usage")),1)]),_:1}),t(f,{component:"th",scope:"col"},{default:e(()=>[r(s(o(l)("access_token.expires_at")),1)]),_:1}),t(f,{component:"th",scope:"col"},{default:e(()=>[r(s(o(l)("general.created_at")),1)]),_:1}),t(f,{component:"th",scope:"col"})]),_:1})]),body:e(()=>[(_(!0),T(L,null,ne(c.tokens.data,x=>(_(),C(ge,{key:x.id,item:x,onOnDelete:()=>{o(u)(x.id)}},{checkbox:e(()=>[t(U,{checked:o(d),"onUpdate:checked":k[2]||(k[2]=W=>I(d)?d.value=W:null),value:x.id},null,8,["checked","value"])]),_:2},1032,["item","onOnDelete"]))),128))]),_:1}),c.tokens.data.length?D("",!0):(_(),C(fe,{key:0,class:"p-md"},{default:e(()=>[r(s(o(l)("access_token.no_result")),1)]),_:1}))]),_:1}),c.tokens.meta.links.length>3?(_(),T("div",Ae,[t(ve,{meta:c.tokens.meta,links:c.tokens.links},null,8,["meta","links"])])):D("",!0)])],64)}}});export{at as default};
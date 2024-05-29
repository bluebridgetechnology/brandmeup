import{d as x,i as v,T as D,N as F,c as C,a as t,b as o,e as r,w as e,m as M,k as G,F as T,o as c,Z as R,g as h,j as k,f as m,t as n,_ as f,$ as p,ab as $,r as Z}from"./app.3dbb9f4f.js";import{u as z}from"./useRouter.19704d13.js";import{_ as A}from"./Admin.8227e551.js";import{_ as H}from"./PageHeader.5278f6a5.js";import{u as J}from"./usePageMode.55077520.js";import{_ as K}from"./WebhookAction.dfd77dfd.js";import{_ as w}from"./Panel.1435ce07.js";import{_ as y}from"./Select.2234a951.js";import{_ as q}from"./Checkbox.1a8805b0.js";import{_ as P}from"./LabelSuffix.6a36f138.js";import{_ as N}from"./Label.bde4e04c.js";import{_ as S}from"./Flex.781629fc.js";import{_ as Q}from"./ChangeSecret.905c87e7.js";import"./QueueList.71914ee1.js";import"./Trash.108c227d.js";import"./Alert.68363348.js";import"./VerticalGroup.1aa58a90.js";const W={class:"w-full mx-auto row-py"},X={class:"row-px"},Y={for:"name"},I={for:"callback_url"},ee={for:"method"},te=r("option",{value:"post"},"POST",-1),oe=r("option",{value:"get"},"GET",-1),ae=r("option",{value:"put"},"PUT",-1),le=r("option",{value:"delete"},"DELETE",-1),se={for:"content_type"},re=r("option",{value:"application/json"},"application/json",-1),de=r("option",{value:"application/x-www-form-urlencoded"},"application/x-www-form-urlencoded ",-1),ne={for:"max_attempts"},ie=r("option",{value:"1"},"1",-1),me=r("option",{value:"2"},"2",-1),ue=r("option",{value:"3"},"3",-1),ce={for:"secret"},fe={class:"grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-sm"},pe={class:"flex items-center mt-lg"},_e=x({layout:A}),Se=Object.assign(_e,{__name:"CreateEdit",props:{mode:{required:!0,type:String,default:"create"},record:{type:Object},events:{type:Object}},setup(_){const u=_,V=v("routePrefix");v("confirmation"),v("authPasswordConfirmation");const{isCreate:g,isEdit:i}=J(),{onError:E}=z(),a=D({name:i.value?u.record.name:"",callback_url:i.value?u.record.callback_url:"",method:i.value?u.record.method:"post",content_type:i.value?u.record.content_type:"application/json",max_attempts:i.value?u.record.max_attempts:1,secret:i.value?u.record.secret:"",events:i.value?u.record.events:[],active:i.value?u.record.active:!0}),B=F(()=>a.method==="post"||a.method==="put"||a.method==="delete"),U=(l=!1)=>{a.transform(s=>({...s,login:l})).post(route(`${V}.system.webhooks.store`),{onError:s=>{E(s,U)}})},j=()=>{a.put(route(`${V}.system.webhooks.update`,{webhook:u.record.id}),{preserveScroll:!0,onError:l=>{E(l,j)}})},L=()=>{g.value&&U(),i.value&&j()};return(l,s)=>(c(),C(T,null,[t(o(R),{title:_.mode==="create"?l.$t("webhook.create_webhook"):l.$t("webhook.edit_webhook")},null,8,["title"]),r("div",W,[t(H,{title:_.mode==="create"?l.$t("webhook.create_webhook"):l.$t("webhook.edit_webhook")},{default:e(()=>[o(i)?(c(),h(K,{key:0,record:_.record,edit:!1},null,8,["record"])):k("",!0)]),_:1},8,["title"]),r("div",X,[r("form",{method:"post",onSubmit:M(L,["prevent"])},[t(w,null,{title:e(()=>[m(n(l.$t("general.details")),1)]),default:e(()=>[t(f,{class:"form-field"},{title:e(()=>[r("label",Y,[m(n(l.$t("general.name"))+" ",1),t(P,{danger:!0},{default:e(()=>[m("*")]),_:1})])]),footer:e(()=>[t(p,{message:o(a).errors.name},null,8,["message"])]),default:e(()=>[t($,{modelValue:o(a).name,"onUpdate:modelValue":s[0]||(s[0]=d=>o(a).name=d),type:"text",id:"name",placeholder:l.$t("general.name"),autofocus:o(g),required:""},null,8,["modelValue","placeholder","autofocus"])]),_:1}),t(f,{class:"form-field mt-lg"},{title:e(()=>[r("label",I,[m(n(l.$t("webhook.callback_url"))+" ",1),t(P,{danger:!0},{default:e(()=>[m("*")]),_:1})])]),footer:e(()=>[t(p,{message:o(a).errors.callback_url},null,8,["message"])]),default:e(()=>[t($,{modelValue:o(a).callback_url,"onUpdate:modelValue":s[1]||(s[1]=d=>o(a).callback_url=d),type:"url",id:"callback_url",placeholder:"https://example.com/webhook",required:""},null,8,["modelValue"])]),_:1}),t(f,{class:"form-field mt-lg"},{title:e(()=>[r("label",ee,n(l.$t("webhook.method")),1)]),footer:e(()=>[t(p,{message:o(a).errors.method},null,8,["message"])]),default:e(()=>[t(y,{modelValue:o(a).method,"onUpdate:modelValue":s[2]||(s[2]=d=>o(a).method=d),id:"method",required:""},{default:e(()=>[te,oe,ae,le]),_:1},8,["modelValue"])]),_:1}),B.value?(c(),h(f,{key:0,class:"form-field mt-lg"},{title:e(()=>[r("label",se,n(l.$t("webhook.content_type")),1)]),footer:e(()=>[t(p,{message:o(a).errors.content_type},null,8,["message"])]),default:e(()=>[t(y,{modelValue:o(a).content_type,"onUpdate:modelValue":s[3]||(s[3]=d=>o(a).content_type=d),id:"content_type",required:""},{default:e(()=>[re,de]),_:1},8,["modelValue"])]),_:1})):k("",!0),t(f,{class:"form-field mt-lg"},{title:e(()=>[r("label",ne,n(l.$t("webhook.max_attempts")),1)]),footer:e(()=>[t(p,{message:o(a).errors.max_attempts},null,8,["message"])]),default:e(()=>[t(y,{modelValue:o(a).max_attempts,"onUpdate:modelValue":s[4]||(s[4]=d=>o(a).max_attempts=d),id:"max_attempts",required:""},{default:e(()=>[ie,me,ue]),_:1},8,["modelValue"])]),_:1}),t(f,{class:"form-field mt-lg"},{title:e(()=>[m(n(l.$t("general.status")),1)]),footer:e(()=>[t(p,{message:o(a).errors.active},null,8,["message"])]),default:e(()=>[t(S,{class:"items-center"},{default:e(()=>[t(q,{checked:o(a).active,"onUpdate:checked":s[5]||(s[5]=d=>o(a).active=d),id:"active"},null,8,["checked"]),t(N,{for:"active",class:"!mb-0"},{default:e(()=>[m(n(l.$t("general.active")),1)]),_:1})]),_:1})]),_:1})]),_:1}),t(w,{class:"mt-lg"},{title:e(()=>[m(n(l.$t("general.security")),1)]),default:e(()=>[o(g)?(c(),h(f,{key:0},{title:e(()=>[r("label",ce,n(l.$t("webhook.secret"))+" ("+n(l.$t("general.optional"))+")",1)]),footer:e(()=>[t(p,{message:o(a).errors.secret},null,8,["message"])]),default:e(()=>[t($,{modelValue:o(a).secret,"onUpdate:modelValue":s[6]||(s[6]=d=>o(a).secret=d),type:"text",id:"secret",placeholder:l.$t("webhook.secret")},null,8,["modelValue","placeholder"])]),_:1})):k("",!0),o(i)?(c(),h(Q,{key:1,webhookId:_.record.id},null,8,["webhookId"])):k("",!0)]),_:1}),t(w,{class:"mt-lg"},{title:e(()=>[m(n(l.$t("webhook.events")),1)]),default:e(()=>[r("div",fe,[(c(!0),C(T,null,Z(_.events,(d,b)=>(c(),h(S,{key:b,responsive:!1,class:"items-center"},{default:e(()=>[t(q,{checked:o(a).events,"onUpdate:checked":s[7]||(s[7]=O=>o(a).events=O),value:b,id:b},null,8,["checked","value","id"]),t(N,{for:b,class:"!mb-0"},{default:e(()=>[m(n(d),1)]),_:2},1032,["for"])]),_:2},1024))),128))])]),_:1}),r("div",pe,[t(G,{type:"submit",isLoading:o(a).processing,disabled:o(a).processing},{default:e(()=>[m(n(o(g)?l.$t("general.create"):l.$t("general.update")),1)]),_:1},8,["isLoading","disabled"])])],32)])])],64))}});export{Se as default};
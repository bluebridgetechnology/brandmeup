import{u as $,I as b,o as k,g as V,w as e,e as s,a as t,t as c,b as m,f as r,_ as f,$ as u,ab as x,k as h,al as P,n as y}from"./app.3dbb9f4f.js";import{_ as S}from"./Panel.1435ce07.js";import{P as w}from"./ProviderIcon.fe1a63e2.js";import{_ as I}from"./ReadDocHelp.a521e697.js";import{_ as N}from"./Select.2234a951.js";import{_ as U}from"./InputHidden.428c3568.js";import{_ as B}from"./Checkbox.1a8805b0.js";import{_ as A}from"./Flex.781629fc.js";import{_ as C}from"./Label.bde4e04c.js";import{_}from"./LabelSuffix.6a36f138.js";import"./Eye.96ec91e4.js";const D={class:"flex items-center"},E={class:"mr-xs"},O=s("span",null,"Pinterest",-1),j={href:"https://developers.pinterest.com/apps/",class:"link",target:"_blank"},q={for:"id"},F={for:"secret"},T=s("label",{for:"env"},"Environment",-1),z=s("option",{value:"sandbox"},"Sandbox",-1),G=s("option",{value:"production"},"Production",-1),ee={__name:"PinterestServiceForm",props:{form:{required:!0,type:Object}},setup(o){const{t:l}=$(),p=o,{notify:v}=y(),a=b({}),g=()=>{a.value={},P.put(route("br.services.update",{service:"pinterest"}),p.form,{preserveScroll:!0,onSuccess(){v("success",l("service.service_saved",{service:"Pinterest"}))},onError:d=>{a.value=d}})};return(d,n)=>(k(),V(S,{class:"mt-lg"},{title:e(()=>[s("div",D,[s("span",E,[t(w,{class:"text-pinterest"})]),O])]),description:e(()=>[s("p",null,[s("a",j,c(m(l)("service.create_app",{name:"Pinterest"})),1),r(". ")]),t(I,{href:`${d.$page.props.mixpost.docs_link}/books/integration-of-social-platforms/page/pinterest`,class:"mt-xs"},null,8,["href"])]),default:e(()=>[t(f,{class:"mt-lg"},{title:e(()=>[s("label",q,[r("App ID "),t(_,{danger:""},{default:e(()=>[r("*")]),_:1})])]),footer:e(()=>[t(u,{message:a.value["configuration.client_id"]},null,8,["message"])]),default:e(()=>[t(x,{modelValue:o.form.configuration.client_id,"onUpdate:modelValue":n[0]||(n[0]=i=>o.form.configuration.client_id=i),error:a.value["configuration.client_id"]!==void 0,type:"text",id:"id",autocomplete:"off"},null,8,["modelValue","error"])]),_:1}),t(f,{class:"mt-lg"},{title:e(()=>[s("label",F,[r("App secret key "),t(_,{danger:""},{default:e(()=>[r("*")]),_:1})])]),footer:e(()=>[t(u,{message:a.value["configuration.client_secret"]},null,8,["message"])]),default:e(()=>[t(U,{modelValue:o.form.configuration.client_secret,"onUpdate:modelValue":n[1]||(n[1]=i=>o.form.configuration.client_secret=i),error:a.value["configuration.client_secret"]!==void 0,id:"secret",autocomplete:"new-password"},null,8,["modelValue","error"])]),_:1}),t(f,{class:"mt-lg"},{title:e(()=>[T]),footer:e(()=>[t(u,{message:a.value["configuration.environment"]},null,8,["message"])]),default:e(()=>[t(N,{modelValue:o.form.configuration.environment,"onUpdate:modelValue":n[2]||(n[2]=i=>o.form.configuration.environment=i),error:a.value["configuration.environment"]!==void 0,id:"env"},{default:e(()=>[z,G]),_:1},8,["modelValue","error"])]),_:1}),t(f,{class:"mt-lg"},{title:e(()=>[r(c(m(l)("general.status")),1)]),footer:e(()=>[t(u,{message:a.value.active},null,8,["message"])]),default:e(()=>[t(A,{responsive:!1,class:"items-center"},{default:e(()=>[t(B,{checked:o.form.active,"onUpdate:checked":n[3]||(n[3]=i=>o.form.active=i),id:"active"},null,8,["checked"]),t(C,{for:"active",class:"!mb-0"},{default:e(()=>[r(c(m(l)("general.active")),1)]),_:1})]),_:1})]),_:1}),t(h,{onClick:g,class:"mt-lg"},{default:e(()=>[r(c(m(l)("general.save")),1)]),_:1})]),_:1}))}};export{ee as default};

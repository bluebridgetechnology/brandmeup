import{d as w,u as $,I as b,J as x,N as C,c as _,a as e,b as l,e as o,w as a,F as f,o as s,Z as N,r as B,g as p,f as n,t as r,j as h,k as L,Y as T,al as V}from"./app.3dbb9f4f.js";import{_ as D,D as I}from"./Admin.8227e551.js";import{_ as j}from"./PageHeader.5278f6a5.js";import{_ as F}from"./Panel.1435ce07.js";import{T as O,_ as q}from"./Tab.87218907.js";import{_ as A}from"./Alert.68363348.js";import{_ as E}from"./Textarea.2260d931.js";import{_ as J}from"./NoResult.f7bfb2e6.js";import"./QueueList.71914ee1.js";import"./Flex.781629fc.js";const M={class:"w-full mx-auto row-py"},S={class:"w-full row-px"},Y={class:"mt-lg row-px w-full"},Z={class:"mt-md"},z=["href"],G=w({layout:D}),te=Object.assign(G,{__name:"Logs",props:{logs:{required:!0,type:Array}},setup(d){const{t:m}=$(),v=m("system.system_logs"),g=d,c=b(null);x(()=>{g.logs.length&&(c.value=g.logs[0].name)});const t=C(()=>{const i=g.logs.find(y=>y.name===c.value);return i||!1}),k=()=>{V.delete(route("br.system.logs.clear"),{data:{filename:t.value.name}})};return(i,y)=>(s(),_(f,null,[e(l(N),{title:l(v)},null,8,["title"]),o("div",M,[e(j,{title:l(v)},null,8,["title"]),o("div",S,[e(O,null,{default:a(()=>[(s(!0),_(f,null,B(d.logs,u=>(s(),p(q,{key:u.name,onClick:H=>c.value=u.name,active:c.value===u.name},{default:a(()=>[e(I,{class:"mr-xs"}),n(" "+r(u.name),1)]),_:2},1032,["onClick","active"]))),128))]),_:1})]),o("div",Y,[e(F,{class:"mt-lg"},{default:a(()=>[d.logs.length?(s(),_(f,{key:0},[t.value?(s(),_(f,{key:0},[t.value.error?(s(),p(A,{key:0,closeable:!1,variant:"warning",class:"mb-md"},{default:a(()=>[n(r(t.value.error),1)]),_:1})):h("",!0),e(E,{value:t.value.contents,class:"h-96",readonly:""},null,8,["value"])],64)):h("",!0),o("div",Z,[o("a",{href:i.route("br.system.logs.download",{filename:t.value.name}),target:"_blank"},[e(L,{class:"mr-xs"},{default:a(()=>[n(r(l(m)("general.download")),1)]),_:1})],8,z),e(T,{onClick:k},{default:a(()=>[n(r(l(m)("general.clean_up")),1)]),_:1})])],64)):(s(),p(J,{key:1},{default:a(()=>[n(r(l(m)("system.there_are_no_logs")),1)]),_:1}))]),_:1})])])],64))}});export{te as default};
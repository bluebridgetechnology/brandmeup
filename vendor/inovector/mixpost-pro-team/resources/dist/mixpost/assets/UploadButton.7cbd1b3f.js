import{i as v,I as i,o as l,c as k,e as r,A as B,g as j,a0 as w,j as x,a1 as c,n as P}from"./app.3dbb9f4f.js";const N=["accept"],$={__name:"UploadButton",props:{withPreloader:{type:Boolean,default:!0}},emits:["upload"],setup(u,{emit:f}){const p=f,d=v("routePrefix"),{notify:m}=P(),a=i(null),o=i(!1),s=["image/jpg","image/jpeg","image/gif","image/png"],g=t=>Array.from(t).filter(e=>s.includes(e.type)),_=()=>{a.value.click()},y=t=>{const e=new FormData;e.append("file",t),c.start(),o.value=!0,axios.post(route(`${d}.files.upload`),e).then(function(n){p("upload",n.data)}).catch(function(n){m("error",n.response.data.message)}).finally(()=>{c.done(),o.value=!1})},h=t=>{const e=g(t.target.files);e.length&&(a.value.value=null,y(e[0]))};return(t,e)=>(l(),k("div",null,[r("div",{onClick:_,role:"button",class:"inline-flex relative"},[B(t.$slots,"default"),u.withPreloader&&o.value?(l(),j(w,{key:0,opacity:75})):x("",!0)]),r("input",{ref_key:"input",ref:a,type:"file",accept:s.join(","),class:"hidden",onChange:h},null,40,N)]))}};export{$ as _};
import{p as d,o as l,c as a,e as n,a as s,ab as i,X as c,j as u}from"./app.3dbb9f4f.js";const m={},p={xmlns:"http://www.w3.org/2000/svg",fill:"none",viewBox:"0 0 24 24","stroke-width":"1.5",stroke:"currentColor",class:"w-6 h-6"},_=n("path",{"stroke-linecap":"round","stroke-linejoin":"round",d:"M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z"},null,-1),h=[_];function f(e,o){return l(),a("svg",p,h)}const w=d(m,[["render",f]]),k={class:"relative"},x={for:"keyword",class:"absolute top-0 left-0 ml-sm mt-xs"},V={__name:"SearchInput",props:{modelValue:{required:!0,type:String},placeholder:{type:String,default:"Search by keyword"}},emits:["update:modelValue"],setup(e){return(o,t)=>(l(),a("div",k,[s(i,{type:"text",value:e.modelValue,"onUpdate:modelValue":t[0]||(t[0]=r=>o.$emit("update:modelValue",r)),id:"keyword",placeholder:e.placeholder,class:"w-full pl-11 pr-11"},null,8,["value","placeholder"]),n("label",x,[s(w,{class:"text-stone-600"})]),e.modelValue?(l(),a("div",{key:0,onClick:t[1]||(t[1]=r=>o.$emit("update:modelValue","")),tabindex:"0",role:"button",class:"absolute top-0 right-0 mr-xs mt-2.5"},[s(c,{class:"!w-5 !h-5 text-stone-600 hover:text-stone-800 transition-colors ease-in-out duration-200"})])):u("",!0)]))}};export{w as M,V as _};

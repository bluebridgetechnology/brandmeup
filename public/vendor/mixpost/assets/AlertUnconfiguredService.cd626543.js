import{a6 as v,N as _,b as u,o as r,c as t,a as n,w as c,t as s,j as o,e as l,k as g,f as k,h as m}from"./app.3dbb9f4f.js";import{_ as h}from"./Alert.68363348.js";const y={key:0,class:"mb-md"},C={key:0},b={key:1},$={key:2},p={key:3},N={key:4},w={key:5},V={class:"mt-xs italic"},A={__name:"AlertUnconfiguredService",props:{isConfigured:{type:Object,required:!0}},setup(i){const a=i,{user:d}=v(),f=_(()=>Object.keys(a.isConfigured).some(e=>!a.isConfigured[e]));return(e,j)=>u(d).is_admin&&f.value?(r(),t("div",y,[n(h,{variant:"warning",closeable:!1,class:"mb-md"},{default:c(()=>[i.isConfigured.google?o("",!0):(r(),t("p",C,s(e.$t("service.not_configured_service",{service:"Google"})),1)),i.isConfigured.facebook?o("",!0):(r(),t("p",b,s(e.$t("service.not_configured_service",{service:"Facebook"})),1)),i.isConfigured.pinterest?o("",!0):(r(),t("p",$,s(e.$t("service.not_configured_service",{service:"Pinterest"})),1)),i.isConfigured.linkedin?o("",!0):(r(),t("p",p,s(e.$t("service.not_configured_service",{service:"LinkedIn"})),1)),i.isConfigured.twitter?o("",!0):(r(),t("p",N,s(e.$t("service.not_configured_service",{service:"X"})),1)),i.isConfigured.tiktok?o("",!0):(r(),t("p",w,s(e.$t("service.not_configured_service",{service:"TikTok"})),1)),l("p",V,s(e.$t("service.configure_services_desc")),1)]),_:1}),n(u(m),{href:e.route("br.services.index"),class:"inline-block"},{default:c(()=>[n(g,null,{default:c(()=>[k(s(e.$t("service.configure_services")),1)]),_:1})]),_:1},8,["href"])])):o("",!0)}};export{A as _};

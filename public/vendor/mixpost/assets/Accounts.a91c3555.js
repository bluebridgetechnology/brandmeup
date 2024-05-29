import{i as m,o as c,g as l,w as a,e,a as o,t as r,b as s,h as $,ap as E,a6 as X,f as d,an as Q,j as p,c as k,p as W,I,ab as Y,_ as Z,k as L,H as J,n as G,al as M,a5 as K,A as ee,u as se,T as te,N as oe,af as ae,R as ne,F as z,r as re,ac as ce,cz as ie,cA as le,Z as ue,V as de,a7 as pe,ag as V,ak as _e,ah as fe,S as B,Y as me,l as ve,aO as he}from"./app.3dbb9f4f.js";import{_ as be}from"./PageHeader.5278f6a5.js";import{_ as ge}from"./Panel.1435ce07.js";import{_ as ke}from"./Account.6c1bcc0e.js";import{T as $e,F as q,M as xe,I as we,Y as ye,P as Ce,_ as j}from"./ProviderIcon.fe1a63e2.js";import{E as Ae}from"./EllipsisVertical.6eb78bb2.js";import{R as Ie}from"./Refresh.1865b3fa.js";import{T as Pe}from"./Trash.108c227d.js";import{_ as Se}from"./AlertUnconfiguredService.cd626543.js";import{_ as Fe}from"./Alert.68363348.js";import{_ as Te}from"./Flex.781629fc.js";import"./ExclamationCircle.5d8a3fe5.js";const Ve={class:"flex mr-4"},Le={class:"flex flex-col items-start"},Me=e("span",{class:"font-semibold"},"X",-1),je={__name:"AddTwitterAccount",setup(f){const t=m("workspaceCtx");return(n,u)=>(c(),l(s($),{href:n.route("br.accounts.add",{workspace:s(t).id,provider:"twitter"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-twitter hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",Ve,[o($e,{class:"text-twitter"})]),e("span",Le,[Me,e("span",null,r(n.$t("service.twitter.connect_profile")),1)])]),_:1},8,["href"]))}},De={class:"flex mr-4"},Ne={class:"flex flex-col items-start"},Re=e("span",{class:"font-semibold"},"Facebook Page",-1),ze={__name:"AddFacebookPage",setup(f){const t=m("workspaceCtx");return(n,u)=>(c(),l(s($),{href:n.route("br.accounts.add",{workspace:s(t).id,provider:"facebook_page"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-facebook hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",De,[o(q,{class:"text-facebook"})]),e("span",Ne,[Re,e("span",null,r(n.$t("service.facebook.connect_page")),1)])]),_:1},8,["href"]))}},Be={class:"flex mr-4"},Ee={class:"flex flex-col items-start"},Ye={class:"font-semibold"},Ge={key:0,class:"text-xs text-red-500 text-left"},qe={__name:"AddFacebookGroup",setup(f){const t=m("workspaceCtx"),n=E().props.additionally.meta_app_version,{user:u}=X();return(v,b)=>s(u).is_admin===!1&&s(n)==="v19.0"?p("",!0):(c(),l(s($),{key:0,href:v.route("br.accounts.add",{workspace:s(t).id,provider:"facebook_group"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-facebook hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",Be,[o(q,{class:"text-facebook"})]),e("span",Ee,[e("span",Ye,[d("Facebook Group "),s(n)==="v19.0"?(c(),l(Q,{key:0,variant:"error"},{default:a(()=>[d("Deprecated in v19")]),_:1})):p("",!0)]),e("span",null,r(v.$t("service.facebook.connect_group")),1),s(n)==="v19.0"?(c(),k("span",Ge,"The Facebook Groups API is deprecated in v19. In the facebook documentation it is missing for the new API changes. We are looking for a quick solution and will come with an update.")):p("",!0)])]),_:1},8,["href"]))}},He={},Oe={xmlns:"http://www.w3.org/2000/svg",fill:"none",viewBox:"0 0 24 24","stroke-width":"1.5",stroke:"currentColor",class:"w-6 h-6"},Ue=e("path",{"stroke-linecap":"round","stroke-linejoin":"round",d:"M13.5 4.5L21 12m0 0l-7.5 7.5M21 12H3"},null,-1),Xe=[Ue];function Qe(f,t){return c(),k("svg",Oe,Xe)}const We=W(He,[["render",Qe]]),Ze={class:"flex mr-md"},Je={class:"flex flex-col items-start"},Ke=e("span",{class:"font-semibold"},"Mastodon",-1),es={key:0,class:"px-lg py-md"},ss={class:"mr-xs"},ts={__name:"AddMastodonAccount",setup(f){const t=m("workspaceCtx"),{notify:n}=G(),u=I(!1),v=I(""),b=I(!1),P=()=>new Promise((h,w)=>{axios.post(route("br.services.createMastodonApp"),{server:v.value}).then(()=>{h()}).catch(function(A){w(A)})}),C=()=>{u.value=!0,M.post(route("br.accounts.add",{workspace:t.id,provider:"mastodon"}),{server:v.value},{onSuccess(){u.value=!1}})},x=async()=>{u.value=!0,await P().then(()=>{C()}).catch(h=>{if(h.response.status!==422){n("error",h.response.data.message);return}n("error",h.response.data.errors)}).finally(()=>{u.value=!1})};return(h,w)=>(c(),k("div",{class:J({"bg-mastodon bg-opacity-20":b.value})},[e("div",{role:"button",onClick:w[0]||(w[0]=A=>b.value=!b.value),type:"button",class:"w-full flex items-center px-lg py-md hover:bg-mastodon hover:bg-opacity-20 ease-in-out duration-200"},[e("span",Ze,[o(xe,{class:"text-mastodon"})]),e("span",Je,[Ke,e("span",null,r(h.$t("service.mastodon.connect_profile")),1)])]),b.value?(c(),k("div",es,[o(Z,null,{title:a(()=>[d(r(h.$t("service.mastodon.enter_server")),1)]),default:a(()=>[o(Y,{type:"text",modelValue:v.value,"onUpdate:modelValue":w[1]||(w[1]=A=>v.value=A),placeholder:"example.server"},null,8,["modelValue"])]),_:1}),o(L,{onClick:x,disabled:!v.value||u.value,isLoading:u.value,class:"mt-xs md:mt-0"},{default:a(()=>[e("span",ss,r(h.$t("general.next")),1),e("span",null,[o(We,{class:"!w-5 !h-5"})])]),_:1},8,["disabled","isLoading"])])):p("",!0)],2))}},os={class:"flex mr-4"},as={class:"flex flex-col items-start"},ns=e("span",{class:"font-semibold"},"Instagram",-1),rs={__name:"AddInstagramAccount",setup(f){const t=m("workspaceCtx");return(n,u)=>(c(),l(s($),{href:n.route("br.accounts.add",{workspace:s(t).id,provider:"instagram"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-twitter hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",os,[o(we,{class:"text-instagram"})]),e("span",as,[ns,e("span",null,r(n.$t("service.instagram.connect_account")),1)])]),_:1},8,["href"]))}},cs={class:"flex mr-sm"},is={class:"flex flex-col items-start"},ls=e("span",{class:"font-semibold"},"YouTube",-1),us={__name:"AddYoutubeAccount",setup(f){const t=m("workspaceCtx");return(n,u)=>(c(),l(s($),{href:n.route("br.accounts.add",{workspace:s(t).id,provider:"youtube"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-twitter hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",cs,[o(ye,{class:"text-youtube"})]),e("span",is,[ls,e("span",null,r(n.$t("service.youtube.connect_profile")),1)])]),_:1},8,["href"]))}},ds={class:"flex mr-4"},ps={class:"flex flex-col items-start"},_s=e("span",{class:"font-semibold"},"Pinterest",-1),fs={__name:"AddPinterestAccount",setup(f){const t=m("workspaceCtx");return(n,u)=>(c(),l(s($),{href:n.route("br.accounts.add",{workspace:s(t).id,provider:"pinterest"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-twitter hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",ds,[o(Ce,{class:"text-pinterest"})]),e("span",ps,[_s,e("span",null,r(n.$t("service.pinterest.connect_profile")),1)])]),_:1},8,["href"]))}},ms={class:"flex mr-4"},vs={class:"flex flex-col items-start"},hs=e("span",{class:"font-semibold"},"LinkedIn Profile",-1),bs={__name:"AddLinkedinProfile",setup(f){const t=m("workspaceCtx");return(n,u)=>(c(),l(s($),{href:n.route("br.accounts.add",{workspace:s(t).id,provider:"linkedin"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-twitter hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",ms,[o(j,{provider:"linkedin"})]),e("span",vs,[hs,e("span",null,r(n.$t("service.linkedin.connect_profile")),1)])]),_:1},8,["href"]))}},gs={class:"flex mr-4"},ks={class:"flex flex-col items-start"},$s=e("span",{class:"font-semibold"},"LinkedIn Page",-1),xs={__name:"AddLinkedinPage",setup(f){const t=m("workspaceCtx");return(n,u)=>(c(),l(s($),{href:n.route("br.accounts.add",{workspace:s(t).id,provider:"linkedin_page"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-twitter hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",gs,[o(j,{provider:"linkedin"})]),e("span",ks,[$s,e("span",null,r(n.$t("service.linkedin.connect_page")),1)])]),_:1},8,["href"]))}},ws={class:"flex mr-4"},ys={class:"flex flex-col items-start"},Cs=e("span",{class:"font-semibold"},"TikTok",-1),As={__name:"AddTikTokAccount",setup(f){const t=m("workspaceCtx");return(n,u)=>(c(),l(s($),{href:n.route("br.accounts.add",{workspace:s(t).id,provider:"tiktok"}),method:"post",as:"button",type:"button",class:"w-full flex items-center px-lg py-4 hover:bg-twitter hover:bg-opacity-20 ease-in-out duration-200"},{default:a(()=>[e("span",ws,[o(j,{provider:"tiktok"})]),e("span",ys,[Cs,e("span",null,r(n.$t("service.tiktok.connect_profile")),1)])]),_:1},8,["href"]))}},Is={class:"flex items-center justify-center h-full border border-primary-800 rounded-lg hover:border-primary-500 hover:text-primary-500 transition-colors ease-in-out duration-200"},Ps={class:"p-lg"},Ss={class:"flex flex-col justify-center items-center"},Fs={class:"mt-xs text-lg"},Ts={__name:"GridAddElement",setup(f){return(t,n)=>(c(),k("span",Is,[e("span",Ps,[e("span",Ss,[o(K,{class:"w-7 h-7"}),e("span",Fs,[ee(t.$slots,"default")])])])]))}},Vs={class:"w-full mx-auto row-py"},Ls={class:"mt-lg row-px w-full"},Ms={key:0,class:"mb-md"},js=["href"],Ds={class:"w-full grid grid-cols-1 md:grid-cols-2 xl:grid-cols-4 2xl:grid-cols-5 gap-6"},Ns={class:"flex flex-col justify-center relative"},Rs={key:0,class:"absolute top-0 left-0"},zs={class:"w-md h-md bg-red-500 rounded-full"},Bs={class:"mt-sm font-semibold text-center break-words"},Es={class:"mt-1 text-center text-stone-800"},Ys={class:"absolute top-0 right-0 mt-sm mr-sm"},Gs={class:"mt-xs"},qs={class:"flex flex-col"},ot={__name:"Accounts",setup(f){const{t}=se(),n=m("workspaceCtx"),u=m("routePrefix"),v=t("account.accounts"),{notify:b}=G(),P=I(!1),C=I(null),x=I(!1),h=i=>{M.put(route("br.accounts.update",{workspace:n.id,account:i}),{},{preserveScroll:!0,onSuccess(y){y.props.flash.error||b("success",t("account.account_updated"))}})},w=()=>{M.delete(route(`${u}.accounts.delete`,{workspace:n.id,account:C.value}),{preserveScroll:!0,onStart(){x.value=!0},onSuccess(){C.value=null,b("success",t("account.account_deleted"))},onFinish(){x.value=!1}})},A=()=>{x.value||(C.value=null)},S=I(!1),g=te({uuid:null,name:""}),H=i=>{S.value=!0,g.uuid=i.uuid,g.name=i.suffix},F=()=>{S.value=null,g.reset()},O=()=>{g.put(route(`${u}.accounts.updateSuffix`,{workspace:n.id,account:g.uuid}),{onSuccess(){F()}})},T=oe(()=>E().props.errors);return ae(()=>T.value,()=>{ve.exports.isEmpty(T.value)||b("error",he(T.value))}),(i,y)=>{var D,N;const U=ne("tooltip");return c(),k(z,null,[o(s(ue),{title:s(v)},null,8,["title"]),e("div",Vs,[o(be,{title:s(v)},{description:a(()=>[d(r(s(t)("account.connect_social_account")),1)]),_:1},8,["title"]),e("div",Ls,[o(Se,{isConfigured:i.$page.props.is_configured_service},null,8,["isConfigured"]),!i.$page.props.is_service_active.twitter&&((N=(D=i.$page.props.enterprise_config)==null?void 0:D.system)==null?void 0:N.workspace_twitter_service)?(c(),k("div",Ms,[o(Fe,{variant:"warning",closeable:!1},{default:a(()=>[e("p",null,r(s(t)("service.not_configured_service",{service:"X"})),1)]),_:1}),o(Te,null,{default:a(()=>[e("a",{href:`/${i.$page.props.mixpost.core_path}/${s(n).id}/workspace-services?redirect-to-accounts=true`,class:"mt-md block"},[o(L,null,{default:a(()=>[d(r(s(t)("service.configure_services")),1)]),_:1})],8,js)]),_:1})])):p("",!0),e("div",Ds,[e("button",{onClick:y[0]||(y[0]=_=>P.value=!0)},[o(Ts,null,{default:a(()=>[d(r(s(t)("account.add_account")),1)]),_:1})]),(c(!0),k(z,null,re(i.$page.props.accounts,_=>(c(),l(ge,{key:_.id,class:"relative"},{default:a(()=>[e("div",Ns,[o(ke,{size:"lg","img-url":_.image,provider:_.provider,name:_.name,active:!0},null,8,["img-url","provider","name"]),_.authorized?p("",!0):(c(),k("div",Rs,[de(e("div",zs,null,512),[[U,s(t)("account.unauthorized")]])])),e("div",Bs,r(_.name),1),e("div",Es,r(s(t)("account.added"))+" "+r(_.created_at),1)]),e("div",Ys,[o(fe,{"width-classes":"w-42"},{trigger:a(()=>[o(pe,null,{default:a(()=>[o(Ae)]),_:1})]),content:a(()=>[o(V,{onClick:R=>h(_.uuid),as:"button"},{icon:a(()=>[o(Ie)]),default:a(()=>[d(" "+r(s(t)("general.update")),1)]),_:2},1032,["onClick"]),o(V,{onClick:R=>H(_),as:"button"},{icon:a(()=>[o(_e)]),default:a(()=>[d(" "+r(s(t)("account.edit_suffix")),1)]),_:2},1032,["onClick"]),o(V,{onClick:R=>C.value=_.uuid,as:"button"},{icon:a(()=>[o(Pe,{class:"text-red-500"})]),default:a(()=>[d(" "+r(s(t)("general.delete")),1)]),_:2},1032,["onClick"])]),_:2},1024)])]),_:2},1024))),128))])])]),o(ce,{show:S.value,"max-width":"sm",closeable:!0,"scrollable-body":!0,onClose:F},{header:a(()=>[d(r(s(t)("account.edit_account_suffix")),1)]),body:a(()=>[e("div",Gs,[o(Y,{type:"text",modelValue:s(g).name,"onUpdate:modelValue":y[1]||(y[1]=_=>s(g).name=_),placeholder:s(t)("account.enter_suffix")},null,8,["modelValue","placeholder"])])]),footer:a(()=>[o(B,{onClick:F,class:"mr-xs"},{default:a(()=>[d(r(s(t)("general.close")),1)]),_:1}),o(L,{onClick:O,isLoading:s(g).processing,disabled:s(g).processing},{default:a(()=>[d(r(s(t)("general.save")),1)]),_:1},8,["isLoading","disabled"])]),_:1},8,["show"]),o(ie,{show:C.value!==null,onClose:A,variant:"danger"},{header:a(()=>[d(r(s(t)("account.delete_account")),1)]),body:a(()=>[d(r(s(t)("account.confirm_delete_account")),1)]),footer:a(()=>[o(B,{onClick:A,disabled:x.value,class:"mr-xs"},{default:a(()=>[d(r(s(t)("general.cancel")),1)]),_:1},8,["disabled"]),o(me,{onClick:w,"is-loading":x.value,disabled:x.value},{default:a(()=>[d(r(s(t)("general.delete")),1)]),_:1},8,["is-loading","disabled"])]),_:1},8,["show"]),o(le,{show:P.value,closeable:!0,onClose:y[2]||(y[2]=_=>P.value=!1)},{default:a(()=>[e("div",qs,[i.$page.props.is_service_active.facebook?(c(),l(ze,{key:0})):p("",!0),i.$page.props.is_service_active.facebook?(c(),l(qe,{key:1})):p("",!0),i.$page.props.is_service_active.facebook?(c(),l(rs,{key:2})):p("",!0),o(ts),i.$page.props.is_service_active.google?(c(),l(us,{key:3})):p("",!0),i.$page.props.is_service_active.pinterest?(c(),l(fs,{key:4})):p("",!0),i.$page.props.is_service_active.linkedin?(c(),l(bs,{key:5})):p("",!0),i.$page.props.is_service_active.linkedin&&i.$page.props.additionally.linkedin_supports_pages?(c(),l(xs,{key:6})):p("",!0),i.$page.props.is_service_active.tiktok?(c(),l(As,{key:7})):p("",!0),i.$page.props.is_service_active.twitter?(c(),l(je,{key:8})):p("",!0)])]),_:1},8,["show"])],64)}}};export{ot as default};

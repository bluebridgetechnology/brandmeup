import{N as v,m as b,o as H,p as y,L as P,E as m,P as p,h as g,D as h}from"./index.d961b7a1.js";import{cp as l}from"./app.3dbb9f4f.js";const A=v.create({name:"div",priority:1e3,addOptions(){return{HTMLAttributes:{}}},group:"block",content:"inline*",parseHTML(){return[{tag:"div"}]},renderHTML({HTMLAttributes:t}){return["div",b(this.options.HTMLAttributes,t),0]},addCommands(){return{setParagraph:()=>({commands:t})=>t.setNode(this.name)}},addKeyboardShortcuts(){return{"Mod-Alt-0":()=>this.editor.commands.setParagraph()}}}),T=()=>({defaultExtensions:[H,A,y,P.configure({openOnClick:!1,linkOnPaste:!1})],insertEmoji:({editorId:r,emoji:e})=>{e.hasOwnProperty("native")&&l.emit("insertEmoji",{editorId:r,emoji:e})},insertContent:({editorId:r,text:e})=>{l.emit("insertContent",{editorId:r,text:e})},replaceContent:({editorId:r,text:e})=>{l.emit("replaceContent",{editorId:r,text:e})},focusEditor:({editorId:r})=>{l.emit("focusEditor",{editorId:r})},isDocEmpty:r=>r==="<div></div>"?!0:r==="",getTextFromHtmlString:r=>{const e=document.createElement("div");e.innerHTML=r;const c=e.innerHTML;e.remove();let s=c.replace(/<div><\/div>/g,`
`);return s=s.replace(/<div>/g,`
`),s=s.replace(/<\/div>/g,""),s=s.replace(/<\/?[^>]+(>|$)/g,""),c.startsWith("<div>")&&(s=s.substring(1)),s}}),L=m.create({name:"hashtag",addProseMirrorPlugins(){return[new p({state:{init(t,{doc:n}){return f(n)},apply(t,n){return t.docChanged?f(t.doc):n}},props:{decorations(t){return this.getState(t)}}})]}}),f=t=>{const n=/#(\w+)\b/gi,o=[];return t.descendants((a,d)=>{!a.text||Array.from(a.text.matchAll(n)).forEach(i=>{const u=i[0],r=i.index||0,e=d+r,c=e+u.length,s=g.inline(e,c,{class:"text-blue-500"});o.push(s)})}),h.create(t,o)},D=m.create({name:"usertag",addProseMirrorPlugins(){return[new p({state:{init(t,{doc:n}){return x(n)},apply(t,n){return t.docChanged?x(t.doc):n}},props:{decorations(t){return this.getState(t)}}})]}}),x=t=>{const n=/@(\w+)\b/gi,o=[];return t.descendants((a,d)=>{!a.text||Array.from(a.text.matchAll(n)).forEach(i=>{const u=i[0],r=i.index||0,e=d+r,c=e+u.length,s=g.inline(e,c,{class:"text-blue-500"});o.push(s)})}),h.create(t,o)},S=m.create({name:"variable",addProseMirrorPlugins(){return[new p({state:{init(t,{doc:n}){return E(n)},apply(t,n){return t.docChanged?E(t.doc):n}},props:{decorations(t){return this.getState(t)}}})]}}),E=t=>{const n=/{{([a-zA-Z0-9_]+)}}/g,o=[];return t.descendants((a,d)=>{!a.text||Array.from(a.text.matchAll(n)).forEach(i=>{const u=i[0],r=i.index||0,e=d+r,c=e+u.length,s=g.inline(e,c,{class:"text-primary-500"});o.push(s)})}),h.create(t,o)};export{L as H,S as V,D as a,T as u};

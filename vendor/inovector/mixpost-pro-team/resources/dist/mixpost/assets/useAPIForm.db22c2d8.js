import{T as y,l as S}from"./app.3dbb9f4f.js";function t(s){return s instanceof File||s instanceof Blob||s instanceof FileList&&s.length>0||s instanceof FormData&&Array.from(s.values()).some(e=>t(e))||typeof s=="object"&&s!==null&&Object.values(s).some(e=>t(e))}function E(s){const e=y(s);let f=o=>o,u=null;const a={transform:o=>l=>(f=l,o),submit:o=>(l,c,r={})=>{e.wasSuccessful=!1,e.recentlySuccessful=!1,e.clearErrors(),clearTimeout(u),r.onBefore&&r.onBefore(),e.processing=!0,r.onStart&&r.onStart();const i=f(e.data());axios[l](c,i,{headers:{"Content-Type":t(i)?"multipart/form-data":"application/json"},onUploadProgress:n=>{e.progress=n,r.onProgress&&r.onProgress(n)}}).then(n=>{e.processing=!1,e.progress=null,e.clearErrors(),e.wasSuccessful=!0,e.recentlySuccessful=!0,u=setTimeout(()=>e.recentlySuccessful=!1,2e3),r.onSuccess&&r.onSuccess(n.data),e.defaults(S.exports.cloneDeep(e.data())),e.isDirty=!1}).catch(n=>{var m;e.processing=!1,e.progress=null,e.clearErrors(),((m=n.response)==null?void 0:m.status)===422&&Object.keys(n.response.data.errors).forEach(g=>{e.setError(g,n.response.data.errors[g][0])}),r.onError&&r.onError(n)}).finally(()=>{e.processing=!1,e.progress=null,r.onFinish&&r.onFinish()})}};return new Proxy(e,{get:(o,l,c)=>Object.keys(a).indexOf(l)<0?o[l]:a[l](c)})}export{E as u};

const CACHE_NAME = 'v1_chache_101';

var urlToCache = [
    './',
    './css/styles.css',
    './jquery.js',
'./main.js',
'./sw.js',  
'./Img/facebook.png',
'./Img/instagram.png',
    './Img/Bio120.png',
    './Img/Bio128.png',
'./Img/Bio256.png',
'./Img/Bio512.png',
'./Img/twiter.png',
    './Img/twt.png',
    './Img/back.jpg',
    './Img/cruz.png',
    './Img/DNC.png',
    './Img/DNC_wite.png',
    './Img/dom.png',
    './Img/face.png',
    './Img/fireball.gif',
    './Img/Fondo.jpg',
    './Img/fondo_difuminado.jpg',
    './Img/icon.png',
    './Img/ico0.png',
    './Img/ins.png',
    './Img/instagram.png',
    './Img/IconoW.png',
    './Img/mail.png',
    './Img/monster.png',
    './Img/muro.png',
    './Img/nop.png',
    './Img/Paisaje.png',
    './Img/Par.jpg',
    './Img/pc.png',
    './Img/si.png',
    './Img/telefono.png',
    './Img/Ti.jpg',
    './Img/tie.jpg',
    './Img/tiktok.png',
    './Img/ws.png',
    './Img/yt.png',

];

self.addEventListener('install', e=>{
    e.waitUntil(
        caches.open(CACHE_NAME)
        .then(chache =>{
            caches.addAll(urlToCache)
            .then(()=>{
                self.skipWaiting();
            })
        })
        .catch(err=>{
            console.log('No se registro cache', err);
        })
    )
});

self.addEventListener('activate', e=>{
    const cacheWhitelist = [CACHE_NAME]

    e.waitUntil(
        cache.keys()
        .then(chacheNames=>{
            return Promise.all(
                cacheNames.map(cacheName =>{
                    if(chacheWhitelist.indexOf(cacheName)=== -1){
                        return chache.delete(cacheName)
                    }
                })
            );
        })
        .then(()=>{
            self.clients.claim();
        })
    )
});

self.addEventListener('fetch', e=>{
    e.respondWith(
        chache.match(e.require)
        .then(res=>{
            if(res){
                return res;
            }
            return fetch(e.require);
        })
    )
});
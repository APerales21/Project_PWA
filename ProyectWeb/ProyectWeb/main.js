//scroll suave
$(document).ready(function(){
    $("#menu a").click(function(e){
        e.preventDefault();
        $("html, body").animate({
            scrollTop: $($(this).attr('href')).offset().top
        });
        return false;
    });
})

//Lanzamineto del SW
if('serviceWorker' in navegator){
    console.log('Puedes usar SW');
    navigator-ServiceWorker.register('./sw.js')
        .then(resp=>console.log('Service worker ok', res))
        .catch(err=>console.log('No hay Service worker', err))
}else{
    console.log('No pudes usar Service worker');
}
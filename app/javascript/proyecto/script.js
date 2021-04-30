
window.submitContacto = function(e) {
    
    var nombre = $("#nombre").val();
    var apellido = $("#apellido").val();
    var email = $("#email").val();
    var domicilio = $("#domicilio").val();
    var codigoPostal = $("#codigoPostal").val();
    var fecha = $("#fecha").val();
    var comentario = $("#comentario").val();
    var tupedido = $("#tupedido").val();

    

    localStorage.nombre = nombre;
    localStorage.apellido = apellido;
    localStorage.email = email;
    localStorage.domicilio = domicilio;
    localStorage.codigoPostal = codigoPostal;
    localStorage.fecha = fecha;
    localStorage.comentario = comentario;
    localStorage.tupedido = tupedido;

    
    var toSend={
        [nombre] : nombre,
        [apellido] : apellido,
        [email] : email,
        [domicilio] : domicilio,
        [codigoPostal] : codigoPostal,
        [fecha] : fecha,
        [comentario] : comentario,
        [tupedido] : tupedido
        
    };
    var jsonString = JSON.stringify(toSend);
    console.log(jsonString);
    const xhr = new XMLHttpRequest();
    xhr.open("POST", "./contactoJSON.json");
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.send(jsonString);
}



window.añadirMesasDulces = function(){
    localStorage.clear();
    var celebracionEscogida = $('#celebracion').find(":selected").text();
    var temaCelebración = $("#tema").val();
    var numMacarons = $("#numeroMacarons").val();
    var numAlfajores = $("#numeroAlfajores").val();
    var numBerlinas = $("#numeroBerlinas").val();
    var numBrownies = $("#numeroBrownies").val();
    var numAlmendrados = $("#numeroAlmendrados").val();
    var numTrufas = $("#numeroTrufas").val();
    var numBombones = $("#numeroBombones").val();

    var pedidoantes = $("#mipedido").val();
    var stringguardada = $("#mipedido").val();
    
    $("#mipedido").val(stringguardada + "Mesas dulces \n - Celebración: " +  celebracionEscogida + "\n - Tema de celebración: " + temaCelebración + "\n - Contenido: ");

    var opcionesEscogidas = [numMacarons, numAlfajores, numBerlinas, numBrownies, numAlmendrados, numTrufas, numBombones];

    var numEscogodias = 0;

    
    console.log(pedidoantes);

   

    if(temaCelebración==""){
        alert("Escribe el tema de celebración que desees para la mesa.");
        $("#mipedido").val(pedidoantes);
        
        return;
    }
    for(i=0;i<opcionesEscogidas.length+1;i++){
        if(parseInt(opcionesEscogidas[i],10)>=6){
            numEscogodias += parseInt(opcionesEscogidas[i],10);
            console.log(numEscogodias);
        }
    }
    console.log(numEscogodias);
    
    if(numEscogodias < 24){
        
        alert("Has seleccionado un total de " + numEscogodias + ". El total de productos escogidos debe de ser mínimo 24. Para que los productos cuenten, tienen que haber mínimo 6 del mismo tipo");
        $("#mipedido").val(pedidoantes);
        return;
    }
    

    for(i=0 ; i<opcionesEscogidas.length+1; i++){
        
        if(opcionesEscogidas[i]>=6){
            switch(i){
                case 0: var stringguardada = $("#mipedido").val();
    
                        $("#mipedido").val(stringguardada + "Número de macarons:" +  numMacarons + "; ");
                        break;

                case 1: var stringguardada = $("#mipedido").val();
    
                        $("#mipedido").val(stringguardada + "Número de alfajores:" +  numAlfajores + "; ");
                        break;

                case 2: var stringguardada = $("#mipedido").val();
    
                        $("#mipedido").val(stringguardada + "Número de berlinas:" +  numBerlinas + "; ");
                        break;

                case 3: var stringguardada = $("#mipedido").val();
    
                        $("#mipedido").val(stringguardada + "Número de brownies:" +  numBrownies + "; ");
                        break;

                case 4: var stringguardada = $("#mipedido").val();
    
                        $("#mipedido").val(stringguardada + "Número de almendrados:" +  numAlmendrados + "; ");
                        break;

                case 5: var stringguardada = $("#mipedido").val();
    
                        $("#mipedido").val(stringguardada + "Número de trufas:" +  numTrufas + "; ");
                        break;

                case 6: var stringguardada = $("#mipedido").val();
    
                        $("#mipedido").val(stringguardada + "Número de bombones:" +  numBombones + "; ");
                        break;
            }
        }else{
            switch(i){
                case 0: 
                if(numMacarons == ""){
                    continue;
                }else{
                    if(confirm("Has seleccionado sólo " + opcionesEscogidas[i] + " unidades de Macarons. No se va a añadir al pedido. Acepta si quieres confirmar el pedido sin los Macarons y cancela si quieres editarlo" )){
                        continue;
                    }else{
                        return;
                    }
                    break;
                }
                        


                case 1:

                    if(numAlfajores==""){
                        continue;
                    }else{
                        if(confirm("Has seleccionado sólo " + opcionesEscogidas[i] + " unidades de alfajores. No se va a añadir al pedido. Acepta si quieres confirmar el pedido sin los Macarons y cancela si quieres editarlo" )){
                            continue;
                        }else{
                            return;
                        }
                        break;
                    }
                    

                case 2:
                    if(numBerlinas==""){
                        continue;
                    }else{
                        if(confirm("Has seleccionado sólo " + opcionesEscogidas[i] + " unidades de berlinas. No se va a añadir al pedido. Acepta si quieres confirmar el pedido sin los Macarons y cancela si quieres editarlo" )){
                            continue;
                        }else{
                            return;
                        }
                        break;
                    }
                    
                
                

                case 3:
                    if(numBrownies==""){
                        continue;
                    }else{
                        if(confirm("Has seleccionado sólo " + opcionesEscogidas[i] + " unidades de brownies. No se va a añadir al pedido. Acepta si quieres confirmar el pedido sin los Macarons y cancela si quieres editarlo" )){
                            continue;
                        }else{
                            return;
                        }
                        break;
                    }
                    

                case 4:
                    if(numAlmendrados==""){
                        continue;
                    }else{
                        if(confirm("Has seleccionado sólo " + opcionesEscogidas[i] + " unidades de almendrados. No se va a añadir al pedido. Acepta si quieres confirmar el pedido sin los Macarons y cancela si quieres editarlo" )){
                            continue;
                        }else{
                            return;
                        }
                        break;

                    }
                    

                case 5:

                    if(numTrufas==""){
                        continue;
                    }else{
                        if(confirm("Has seleccionado sólo " + opcionesEscogidas[i] + " unidades de trufas. No se va a añadir al pedido. Acepta si quieres confirmar el pedido sin los Macarons y cancela si quieres editarlo" )){
                            continue;
                        }else{
                            return;
                        }
                        break;

                    }
                    

                case 6:
                    if(numBombones==""){
                        continue;
                    }else{

                        if(confirm("Has seleccionado sólo " + opcionesEscogidas[i] + " unidades de bombones. No se va a añadir al pedido. Acepta si quieres confirmar el pedido sin los Macarons y cancela si quieres editarlo" )){
                            continue;
                        }else{
                            return;
                        }
                        break;
                    }
                    
            }
        }
    }

    
    var strsave = $("#mipedido").val();
    $("#mipedido").val(strsave + "\n");

    

    $("#celebracionEscogida").val("");
    $("#tema").val("");
    $("#numeroAlfajores").val("");
    $("#numeroBerlinas").val("");
    $("#numeroTrufas").val("");
    $("#numeroAlmendrados").val("");
    $("#numeroBombones").val("");
    $("#numeroMacarons").val("");
    $("#numeroBrownies").val("");
    


    
}

window.añadirTartas = function(){
    var tartaNumPersonas = $("#personasTarta").val();
    var tartaElegida = $("#tarta-bizcocho").val();
    var tartaButtercreamElegida = $("#tarta-buttercream").val();

    if(tartaNumPersonas==""){
        alert("Introduce número de personas para la tarta");
        return;
    }else if(tartaNumPersonas<15){
        alert("Debes añadir un mínimo de 15 unidades");
        return;
    }
    
    var stringguardada = $("#mipedido").val();
    
    if($("#gridCheck-tarta").is(":checked")){
        $("#mipedido").val(stringguardada + "Tartas *PARA MESA\n - Número de personas: " +  tartaNumPersonas + "\n - Sabor del bizcocho: " + tartaElegida + "\n - Buttercream: "+  tartaButtercreamElegida + "\n");
    }else{
        $("#mipedido").val(stringguardada + "Tartas\n - Número de personas: " +  tartaNumPersonas + "\n - Sabor del bizcocho: " + tartaElegida + "\n - Buttercream: "+  tartaButtercreamElegida + "\n");
    }
    $("#personasTarta").val("");
}


window.añadirGalletas = function(){
    var galletasNumero = $("#numeroGalletas").val();
    var galletasTamaño = $("#galletas-tamaño").val();
    var galletasSabor = $("#galletas-sabor").val();
    var galletasDecorado = $("#galletas-decorado").val();

    if(galletasNumero==""){
        alert("Introduce número de galletas");
        return;
    }else if(galletasNumero<15){
        alert("Debes añadir un mínimo de 15 unidades");
        return;
    }
    
    if(galletasDecorado==""){
        alert("Describe el decorado que quieres para las galletas, si no deseas ninguno en concreto escribe 'básico' ")
        return;
    }
    console.log("llega");
    var stringguardada = $("#mipedido").val();
    
    if($("#gridCheck-galletas").is(":checked")){
        $("#mipedido").val(stringguardada + "Galletas *PARA MESA \n - Número: " +  galletasNumero + "\n - Tamaño: " + galletasTamaño + "\n - Sabor: "+  galletasSabor + "\n - Decorado: " + galletasDecorado + "\n");
    }else{
        $("#mipedido").val(stringguardada + "Galletas\n - Número: " +  galletasNumero + "\n - Tamaño: " + galletasTamaño + "\n - Sabor: "+  galletasSabor + "\n - Decorado: " + galletasDecorado + "\n");
    }

    $("#numeroGalletas").val("");
    $("#galletas-decorado").val("");
    
}

window.añadirCupcakes = function(){
    var cupcakesNumero = $("#numeroCupcakes").val();
    var cupcakesTamaño = $("#cupcakes-tamaño").val();
    var cupcakesSabor = $("#cupcakes-sabor").val();
    var cupcakesButtercream = $("#cupcakes-buttercream").val();

    if(cupcakesNumero==""){
        alert("Introduce número de cupcakes");
        return;
    }else if(cupcakesNumero<15){
        alert("Debes añadir un mínimo de 15 unidades");
        return;
    }

    var stringguardada = $("#mipedido").val();
    if($("#gridCheck-cup-cakes").is(":checked")){
        $("#mipedido").val(stringguardada + "Cupcakes *PARA MESA\n - Número: " +  cupcakesNumero + "\n - Tamaño: " + cupcakesTamaño + "\n - Sabor: "+  cupcakesSabor + "\n - Buttercream: " + cupcakesButtercream + "\n");
    }else{
        $("#mipedido").val(stringguardada + "Cupcakes\n - Número: " +  cupcakesNumero + "\n - Tamaño: " + cupcakesTamaño + "\n - Sabor: "+  cupcakesSabor + "\n - Buttercream: " + cupcakesButtercream + "\n");
    }
    $("#numeroCupcakes").val("");
}

window.añadirPopcakes = function(){

    var popcakesNumero = $("#numeroPopcakes").val();
    var popcakesSabor= $("#popcakes-sabor").val();
    console.log("hola");
    if(popcakesNumero==""){
        alert("Introduce el número de popcakes");
        return;
    }else if(popcakesNumero<15){
        alert("Debes añadir un mínimo de 15 unidades");
        return;
    }
    var stringguardada = $("#mipedido").val();
    if($("#gridCheck-pop-cakes").is(":checked")){
        $("#mipedido").val(stringguardada + "Popcakes *PARA MESA\n - Número: " +  popcakesNumero + "\n - Sabor: " + popcakesSabor + "\n");
    }else{
        $("#mipedido").val(stringguardada + "Popcakes\n - Número: " +  popcakesNumero + "\n - Sabor: " + popcakesSabor + "\n");
    }
    $("#numeroPopcakes").val("");
    
}

window.miPedido =function(){
    var pedidoCompleto = $("#mipedido").val();
    if(pedidoCompleto == ""){
        alert("El pedido está vacío. Añade cosas antes de enviar");
        return;
    }
    localStorage.pedidoCompleto = pedidoCompleto;
    document.location.href = "./pedidos.html";
}

window.initContacto = function(){
    if(localStorage.pedidoCompleto){
        
        var str = localStorage.getItem("pedidoCompleto");
        
        $("#tupedido").val(localStorage.getItem("pedidoCompleto"));
        $("#tupedido1").val(localStorage.getItem("pedidoCompleto"));
        localStorage.clear();
        
    }
}

window.redireccionEventos =function(){

    if($("#mipedido").val()!=""){
        if(confirm("Si cambias de página sin enviar el pedido, perderás todo lo que hayas seleccionado. Acepta para continuar a la página de eventos o cancela para seguir aquí")){
            document.location.href="./eventos.html";
        }else{
            return;
        }
    }else{
        document.location.href="./eventos.html";
    }
    
}

window.redireccionPolitica = function(){
    if($("#mipedido").val()!=""){
        if(confirm("Si cambias de página sin enviar el pedido, perderás todo lo que hayas seleccionado. Acepta para continuar a la página de Política y condiciones o cancela para seguir aquí")){
            document.location.href="./politica y condiciones.html";
        }else{
            return;
        }
    }else{
        document.location.href="./politica y condiciones.html";
    }
}


window.redireccionContacto= function(){
    if($("#mipedido").val()!=""){
        if(confirm("Si cambias de página sin enviar el pedido, perderás todo lo que hayas seleccionado. Acepta para continuar a la página de Contacto o cancela para seguir aquí")){
            document.location.href="./contacto.html";
        }else{
            return;
        }
    }else{
        document.location.href="./contacto.html";
    }
}

window.redireccionInicio = function(){
    if($("#mipedido").val()!=""){
        if(confirm("Si recargas de página sin enviar el pedido, perderás todo lo que hayas seleccionado. Acepta para ir a la página de inicio o cancela para seguir aquí")){
            document.location.href="./index.html";
        }else{
            return;
        }
    }else{
        document.location.href="./index.html";
    }
}

window.redireccionEncargos = function(){
    if($("#mipedido").val()!=""){
        if(confirm("Si recargas de página sin enviar el pedido, perderás todo lo que hayas seleccionado. Acepta para recargar la página o cancela para seguir aquí")){
            document.location.href="./encargos.html";
        }else{
            return;
        }
    }else{
        document.location.href="./encargos.html";
    }
}


window.limpiarPedido = function(){
    $("#mipedido").val("");
}
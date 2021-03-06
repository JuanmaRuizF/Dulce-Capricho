# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User Seeder
admin = User.new({:name => "Admin", :email => "admin@admin.com", :password => "!mda-g6" })
admin.hash_password
admin.save

#Productos Seeder
mesaDulce1 = Mesadulce.create(nombre:"Macarons")
mesaDulce2 = Mesadulce.create(nombre:"Alfajores")
mesaDulce3 = Mesadulce.create(nombre:"Berlinas")
mesaDulce4 = Mesadulce.create(nombre:"Brownies")
mesaDulce5 = Mesadulce.create(nombre:"Almendrados")
mesaDulce6 = Mesadulce.create(nombre:"Trufas")
mesaDulce7 = Mesadulce.create(nombre:"Bombones")


galleta1 = Galletum.create(nombre:"Vainilla")
galleta2 = Galletum.create(nombre:"Chocolate")
galleta3 = Galletum.create(nombre:"Vainilla con chispas de chocolate")
galleta4 = Galletum.create(nombre:"Chocolate con chispas de chocolate")
galleta5 = Galletum.create(nombre:"Canela")
galleta6 = Galletum.create(nombre:"Jengibre")
galleta7 = Galletum.create(nombre:"Mantequilla")

buttercream1 = Buttercream.create(nombre:"Nata")
buttercream2 = Buttercream.create(nombre:"Vainilla")
buttercream3 = Buttercream.create(nombre:"Vainilla y queso")
buttercream4 = Buttercream.create(nombre:"Chocolate con leche")
buttercream5 = Buttercream.create(nombre:"Chocolate negro")
buttercream6 = Buttercream.create(nombre:"Chocolate blanco")
buttercream7 = Buttercream.create(nombre:"Dulce de leche")
buttercream8 = Buttercream.create(nombre:"Frambuesa")
buttercream9 = Buttercream.create(nombre:"Mango")

popcakes1 =  Popcake.create(nombre: "Oreo")
popcakes2 = Popcake.create(nombre: "Galleta")
popcakes3 = Popcake.create(nombre: "Coco")
popcakes4 = Popcake.create(nombre: "Todos")


bizcocho1 = Bizcocho.create(nombre: "Vainilla")
bizcocho2 = Bizcocho.create(nombre: "Chocolate")
bizcocho3 = Bizcocho.create(nombre: "Zanahoria")
bizcocho4 = Bizcocho.create(nombre: "Red Velvet")
bizcocho5 = Bizcocho.create(nombre: "Galleta")

#Eventos Seeder

evento1 = Evento.create(nombre: "Boda", 
    descripcion: "Aseg??rate que uno de los mejores d??as de tu vida salga lo mejor posible con nuestra variedad de dulces y mesas.",
    img1: "eventos/boda4.jpg",
    img2: "eventos/boda2.jpg",
    img3: "eventos/boda5.jpg")
evento2 = Evento.create(nombre: "Bautizo", 
    descripcion: "Un momento que s??lo pasa una vez en la vida, con nuestra ayuda ser?? un evento a??n mejor.",
    img1: "eventos/bautizo2.jpg",
    img2: "eventos/bautizo3.jpg",
    img3: "eventos/bautizo1.jpg")
evento3 = Evento.create(nombre: "Comuni??n", 
    descripcion: "Haz un poco m??s dulce este d??a tan especial",
    img1: "eventos/comunion1.jpg",
    img2: "eventos/comunion2.png",
    img3: "eventos/comunion3.jpg")
evento4 = Evento.create(nombre: "Cumplea??os", 
    descripcion: "Cuando cumplas a??os o cualquier d??a, nosotros siempre te damos alegr??a.",
    img1: "eventos/cumple5.jpg",
    img2: "eventos/cumple2.jpg",
    img3: "eventos/cumple1.jpg")

#Seeder Pedidos    

pedido1 = Pedido.create(nombre: "Francisco", 
            apellido: "Rodr??guez", 
            email: "franrodri@gmail.com", 
            telefono: "683203862",
            domicilio: "c/Le??n y Castillo 28", 
            CP:"33000", 
            fechaEntrega:"05/02/2021", 
            comentario:"Me encantar??a que llegase sobre el mediod??a", 
            tuPedido: "Galletas 
            - N??mero: 50 
            - Tama??o: Medianas 
            - Sabor: Vainilla 
            - Decorado: b??sico")


pedido2 = Pedido.create(nombre: "Pepe", 
            apellido: "Mart??nez", 
            email: "pepemarti@gmail.com",
            telefono: "693832391", 
            domicilio: "c/San Juan 28", 
            CP:"33020", 
            fechaEntrega:"29/01/2021", 
            comentario:"Nada m??s que a??adir", 
            tuPedido: "Cupcakes
            - N??mero: 18
            - Tama??o: Grandes
            - Sabor: Red Velvet
            - Buttercream: Nata
           ")


pedido3 = Pedido.create(nombre: "Irene", 
            apellido: "Garc??a", 
            email: "irenegarca5@gmail.com",
            telefono: "630285237", 
            domicilio: "c/ Triana", 
            CP:"33100", 
            fechaEntrega:"20/02/2021", 
            comentario:"Trabajo de 8:00 a 14:00 as?? que no podr?? recoger el pedido antes", 
            tuPedido: "Tartas
            - N??mero de personas: 20
            - Sabor del bizcocho: Chocolate
            - Buttercream: Mango")

pedido4 = Pedido.create(nombre: "Patricia", 
            apellido: "S??nchez", 
            email: "patrisan@gmail.com", 
            domicilio: "c/ Lanzarote", 
            CP:"33120", 
            fechaEntrega:"20/03/2021", 
            comentario:"", 
            tuPedido: "Tartas
            - N??mero de personas: 30
            - Sabor del bizcocho: Galleta
            - Buttercream: Nata")

formulariocontacto1 = Formulariocontacto.create(nombre: "Alberto",
                        apellido: "Rodr??guez",
                        email: "albertorodriguez@gmail.com",
                        telefono: "999888777",
                        comentario: "??Hacen reparto a domicilio?"
                        )

formulariocontacto2 = Formulariocontacto.create(nombre: "Jose",
                        apellido: "Fern??ndez",
                        email: "josefernandez@gmail.com",
                        telefono: "777888999",
                        comentario: "Quiero hacer una fiesta de empreasa en las pr??ximas navidades, ??aceptan este tipo de eventos?"
                        )
imagenes = 1
while imagenes < 73
    galeria = Galerium.create(img: "galeria/galeria ("+ String(imagenes) + ").jpg")
    imagenes = imagenes + 1
end
    


preguntafrecuente1 = Preguntasfrecuente.create(
                    titulo: "??C??mo funciona?",
                    descripcion: "Ofrecemos mesas de dulces, personalizalas y a??ade tartas, galletas, cupcakes y popcakes a tu gusto. Tambien puedes perdir tartas, galletas, cupcakes y popcakes por separado"      
)

preguntafrecuente2 = Preguntasfrecuente.create(
                    titulo: "??C??mo puedo realizar un pedido?",
                    descripcion: "Ve al apartado de encargos y escoge los productos que desees, env??a el formulario y te mandaremos un presupuesto con tu pedido a tu correo en las siguientes 24 horas ."      
)

preguntafrecuente3 = Preguntasfrecuente.create(
                    titulo: "??C??mo pago?",
                    descripcion: "En el presupuesto que te damos tendr??s un n??mero de cuenta y otro de telefono. Tu decides a trav??s de transferencia bancaria, bizum o efectivo."      
)

#Politicas de empresa
politica1 = Politica.create(
    titulo: "Confirmaci??n de fechas",
    descripcion: "La contrataci??n de eventos deber?? ser confirmada como m??nimo con un mes de antelaci??n."
)
politica2 = Politica.create(
    titulo: "Cita en el local",
    descripcion: "??Necesitas ayuda? Pide cita previa en nuestro local para aclarar todas tus dudas."
)
politica3 = Politica.create(
    titulo: "Pedido m??nimo",
    descripcion: "Cons??ltanos el pedido m??nimo en pasteler??a. El montaje y la decoraci??n se presupuesta a parte."
)
politica4 = Politica.create(
    titulo: "Pago",
    descripcion: "El pago puede ser a trav??s de transferencia bancaria, bizum o efectivo a tu elecci??n. En el presupuesto tendr??s la informaci??n necesaria para cualquiera de las opciones. Se paga la mitad por adelantado."
)
politica5 = Politica.create(
    titulo: "Transporte y montaje",
    descripcion: "Cobraremos un suplemento adicional por el traslado y decoraci??n de la mesa/tarta, dependiendo del lugar de entrega."
)
politica6 = Politica.create(
    titulo: "Recogida de pedidos",
    descripcion: "En caso de que no quieras que realicemos el montaje, tienes la opci??n de recoger tu encargo en nuestro local."
)


fotoalergeno1 = Alergeno.create(
    screenSize: "Small",
    imgSmall: "politicaCondiciones/Alergenos3.png",
    imgMedium:"politicaCondiciones/Alergenos2.png",
    imgLarge:"politicaCondiciones/Alergenos1.png"
)


footer1 = Footer.create(
    nombreizda:"Facebook",
    enlaceizda:"https://www.facebook.com",
    nombremedio:"Direcci??n, Provincia, Espa??a",
    nombredcha:"Inicio",
    enlacedcha: "./index.html"
)

footer2 = Footer.create(
    nombreizda:"Twitter",
    enlaceizda:"https://www.twitter.com",
    nombremedio:"+555 55 55 55",
    nombredcha:"Encargos",
    enlacedcha:"./encargos.html"
)

footer3 = Footer.create(
    nombreizda:"Instagram",
    enlaceizda:"https://www.instagram.com",
    nombremedio:"dulceycaprichobyana@gmail.com",
    nombredcha:"Eventos",
    enlacedcha:"./eventos.html"
)

footer3 = Footer.create(
    nombreizda:"",
    enlaceizda:"",
    nombremedio:"",
    nombredcha:"Pol??tica y Condiciones",
    enlacedcha:"./politica_y_condiciones.html"
)
footer4 = Footer.create(
    nombreizda:"",
    enlaceizda:"",
    nombremedio:"",
    nombredcha:"Contacto",
    enlacedcha:"./contacto.html"
)
footer5 = Footer.create(
    nombreizda:"",
    enlaceizda:"",
    nombremedio:"",
    nombredcha:"??Qui??nes somos?",
    enlacedcha:"./quienes_somos.html"
)
footer6 = Footer.create(
    nombreizda:"",
    enlaceizda:"",
    nombremedio:"",
    nombredcha:"Galer??a",
    enlacedcha:"./galeria.html"
)
footer7 = Footer.create(
    nombreizda:"",
    enlaceizda:"",
    nombremedio:"",
    nombredcha:"Especial de Navidad",
    enlacedcha:"./navidad.html"
)
footer8 = Footer.create(
    nombreizda:"",
    enlaceizda:"",
    nombremedio:"",
    nombredcha:"Especial de Halloween",
    enlacedcha:"./halloween.html"
)

quienes_somos = QuienesSomo.create(
    titulo: "??Quienes somos?",
    descripcion: "Dulce Capricho es una dulceria 100% artesanal. Con la creaci??n de esta p??gina web esperamos poder llevar nuestros servicios y creaciones a muchas m??s personas en todo el mundo"
)

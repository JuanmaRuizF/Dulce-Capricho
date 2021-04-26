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
    descripcion: "Asegúrate que uno de los mejores días de tu vida salga lo mejor posible con nuestra variedad de dulces y mesas.",
    img1: "eventos/boda4.jpg",
    img2: "eventos/boda2.jpg",
    img3: "eventos/boda5.jpg")
evento2 = Evento.create(nombre: "Bautizo", 
    descripcion: "Un momento que sólo pasa una vez en la vida, con nuestra ayuda será un evento aún mejor.",
    img1: "eventos/bautizo2.jpg",
    img2: "eventos/bautizo3.jpg",
    img3: "eventos/bautizo1.jpg")
evento3 = Evento.create(nombre: "Comunión", 
    descripcion: "Haz un poco más dulce este día tan especial",
    img1: "eventos/comunion1.jpg",
    img2: "eventos/comunion2.png",
    img3: "eventos/comunion3.jpg")
evento4 = Evento.create(nombre: "Cumpleaños", 
    descripcion: "Cuando cumplas años o cualquier día, nosotros siempre te damos alegría.",
    img1: "eventos/cumple5.jpg",
    img2: "eventos/cumple2.jpg",
    img3: "eventos/cumple1.jpg")
evento5 = Evento.create(nombre: "Baby showers", 
    descripcion: "Celebra y comparte la dulce espera rodeada de dulzuras. Un día que será difícil de olvidar.",
    img1: "eventos/bs5.jpg",
    img2: "eventos/bs6.jpg",
    img3: "eventos/bs7.jpg")
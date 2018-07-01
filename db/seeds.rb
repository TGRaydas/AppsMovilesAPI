# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Local.create(name: "Local")
User.create(local_id: 1, user: "user", password: "123123")

Desk.create(local_id: 1, number: 1)
Desk.create(local_id: 1, number: 2)
Desk.create(local_id: 1, number: 3)
Desk.create(local_id: 1, number: 4)

Product.create(local_id: 1, name: "DESAYUNO PROTEICO", detail: "Té o café con leche o cortado, huevos revueltos, palta, pan integral, jugo a elección", product_type: "Desayunos", price: "6500", image: File.new('app/assets/images/1.jpg', 'r'))
Product.create(local_id: 1, name: "DESAYUNO SANCHO", detail: "Té o café con leche o cortado, tostadas con matequilla, paila de huevos con jamón, jugo a elección", product_type: "Desayunos", price: "5500", image: File.new('app/assets/images/3.jpeg', 'r'))
Product.create(local_id: 1, name: "RUSO NEGRO", detail: "Vodka-licor de café", product_type: "Bebestibles", price: "3750", image: File.new('app/assets/images/4.jpg', 'r'))
Product.create(local_id: 1, name: "CHILENAZO", detail: "Churrasco, queso, palta, tomate, mayonesa en sopaipillas", product_type: "Sandwich", price: "8500", image: File.new('app/assets/images/4.jpg', 'r'))
Product.create(local_id: 1, name: "VODKA NARANJA", detail: "", product_type: "Bebestible", price: "3200", image: File.new('app/assets/images/4.jpg', 'r'))
Product.create(local_id: 1, name: "MERLUZA FRITA+PAPAS FRITAS", detail: "Milanesa de pollo, lechuga, tomate, cebolla morada, mayonesa", product_type: "Platos", price: "6990", image: File.new('app/assets/images/20.jpeg', 'r'))
Product.create(local_id: 1, name: "LOMO SALTADO MÁS PAPAS FRITAS", detail: "Lomo, tomate, cebolla morada, soya, crema, papas hilo", product_type: "Platos", price: "6500", image: File.new('app/assets/images/20.jpeg', 'r'))
Product.create(local_id: 1, name: "AVE PALTA", detail: "", product_type: "Sandwich", price: "4990", image: File.new('app/assets/images/1.jpg', 'r'))
Product.create(local_id: 1, name: "BARROS JARPA", detail: "", product_type: "Desayunos", price: "6500", image: File.new('app/assets/images/20.jpeg', 'r'))
Product.create(local_id: 1, name: "TABLA SÁNDWICH MÁS PAPAS FRITAS", detail: "Churrasco italiano, barros luco, ave palta, ave italiano con papas fritas", product_type: "Platos", price: "7500", image: File.new('app/assets/images/4.jpg', 'r'))

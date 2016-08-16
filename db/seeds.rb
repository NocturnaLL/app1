# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = Owner.create(email: "admin@admin.com", password: "123456")

Category.create(name:"Avm")
Category.create(name:"Bar")
Category.create(name:"Club")
Category.create(name:"Restaurant")

Place.create(name:"Istinye Park", address:"Istinye Mah Sisli", established_at: "Sisli, Istanbul", phone_number: "05454858874", contact_mail:"istinye@istinye.park", city:"Istanbul", description:"Kaliteli bir Avm.", category_id:1, owner: u)
Place.create(name:"Korupark", address:"Organize Sanayi, Nilüfer", established_at: "Nilüfer, Bursa", phone_number: "05348456578", contact_mail:"korupark@koru.park", city:"Bursa", description:"Bursada 1 numara.", category_id:1, owner: u)
Place.create(name:"Deli Kasap", address:"Fsm Bulvarı, Nilüfer", established_at: "Nilüfer, Bursa", phone_number: "05405487655", contact_mail:"bursa@fsm.park", city:"Bursa", description:"Güzel Mekan", category_id:4, owner: u)
Place.create(name:"Vici", address:"Mudanya Yolu Bademli", established_at: "Mudanya, Bursa", phone_number: "05354558498", contact_mail:"vici@club.com", city:"Bursa", description:"Nezih mekan", category_id:3, owner: u)
Place.create(name:"Kupa Kızı", address:"Fsm Bulvarı, Nilüfer", established_at: "Nilüfer, Bursa", phone_number: "05384687655", contact_mail:"kupa@fkızı.park", city:"Bursa", description:"Güzel Mekan", category_id:2, owner: u)
Place.create(name:"Iskender Kebap", address:"Carrefour, Nilüfer", established_at: "Nilüfer, Bursa", phone_number: "05559887512", contact_mail:"iskender@carrefour.park", city:"Bursa", description:"Etler mis", category_id:4, owner: u)


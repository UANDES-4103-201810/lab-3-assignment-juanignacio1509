# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Place.destroy_all
Event.destroy_all
Ticket.destroy_all
Purchase.destroy_all





User.create([

                {name: "juan",
                 last_name: "bernal",
                email: "a@a.com",
                phone: "+123",
                password: "a132",
                address: "P1"},

                {name: "pio",
                 last_name: "pe",
                 email: "abaasad@a.com",
                 phone: "+15465464523",
                 password: "a150",
                 address: "campoamor"},

                {name: "pepe",
                 last_name: "peres",
                 email: "aji@a.com",
                 phone: "+123321",
                 password: "a132132",
                 address: "aji chico"},

                {name: "jose",
                 last_name: "ortis",
                 email: "abababa@a.com",
                 phone: "+987",
                 password: "987",
                 address: "Pipopopi"},

                {name: "Po",
                 last_name: "el panda",
                 email: "poelpanda@a.com",
                 phone: "+12346789654987",
                 password: "guerreroDragon",
                 address: "monasterio"}
            ])

Place.create([
                 {name: "tshicureo",
                  address: "lo pollito dicen",
                  capacity: 1000}
             ])


Event.create([
                 {name: "chayane",
                  description: "el canta",
                  start_date: "01/04/2018",
                  place_to_host_the_event: "tshicureo"},

                 {name: "lola",
                  description: "el canta",
                  start_date: "10/05/2018",
                  place_to_host_the_event: "tshicureo"},

                 {name: "aji de chile",
                  description: "el canta",
                  start_date: "20/09/2018",
                  place_to_host_the_event: "tshicureo"}
             ])





Ticket.create([
    {description: "aaaa",
        price: 1000,
        event_that_belongs_to: "chayane"},
    {description: "bbbb",
     price: 2000,
     event_that_belongs_to: "chayane"},
    {description: "cccc",
     price: 5000,
     event_that_belongs_to: "chayane"},

    {description: "dddd",
     price: 1000,
     event_that_belongs_to: "lola"},
    {description: "eeee",
     price: 2000,
     event_that_belongs_to: "lola"},
    {description: "ffff",
     price: 5000,
     event_that_belongs_to: "lola"},

    {description: "gggg",
     price: 1000,
     event_that_belongs_to: "aji de chile"},
    {description: "hhhh",
     price: 2000,
     event_that_belongs_to: "aji de chile"},
    {description: "iiii",
     price: 5000,
     event_that_belongs_to: "aji de chile"},

              ])




Purchase.create([

                    {user: "juan",
                     ticket: "chayane canta",
                     paid: true},
                    {user: "juan",
                     ticket: "lola",
                     paid: false},
                    {user: "juan",
                     ticket: "aji de chile",
                     paid: true},

                    {user: "pio",
                     ticket: "chayane canta",
                     paid: true},
                    {user: "pio",
                     ticket: "lola",
                     paid: false},
                    {user: "pio",
                     ticket: "aji de chile",
                     paid: true},

                    {user: "pepe",
                     ticket: "chayane canta",
                     paid: true},
                    {user: "pepe",
                     ticket: "lola",
                     paid: false},
                    {user: "pepe",
                     ticket: "aji de chile",
                     paid: true},

                    {user: "jose",
                     ticket: "chayane canta",
                     paid: true},
                    {user: "jose",
                     ticket: "lola",
                     paid: false},
                    {user: "jose",
                     ticket: "aji de chile",
                     paid: true},

                    {user: "Po",
                     ticket: "chayane canta",
                     paid: true},
                    {user: "Po",
                     ticket: "lola",
                     paid: false},
                    {user: "Po",
                     ticket: "aji de chile",
                     paid: true},



                ])
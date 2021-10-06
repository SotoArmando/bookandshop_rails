# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = Item.create([ {make: "2715", model: "GTS Super 300 Euro 5", year: 2021,
        description: "The Vespa GTS Super 300 with its 300 HPE (High Performance Engine) as standard is the fastest, most powerful Vespa of all time.", backcolor: "EEDD7F"},
     {make: "2715", model: "GTS Super 300 Sport Euro 5", year: 2021,
        description: "The totally steel bodywork with its perfect balance delivers personality and character in abundance.", backcolor: "7FB3D6"},
     {make: "2715", model: "GTS Super 300 Racing Sixties Euro 5", year: 2021, 
        description: "Carefully-selected materials, colours and textures, all combine to create a sporty-looking bike.", backcolor: "9E9F9F"},
     {make: "2715", model: "GTS Super 300 Tech Euro 5", year: 2021, 
        description: "A special matt black finish on the wheel rims that make the Vespa SuperTech such a standout.", backcolor: "979696"},
     {make: "2715", model: "GTS 300 Euro 5", year: 2021, 
        description: "The Vespa GTS 300 with electronic injection delivers up to 23.8 Hp and its quality construction makes for remarkable acceleration.", backcolor: "E9A997"},
     {make: "2715", model: "GTS 300 Touring Euro 5", year: 2021,
        description: "The Vespa GTS 300 with electronic injection delivers up to 23.8 Hp and its quality construction makes for remarkable acceleration.", backcolor: "D6CEA5"},
     {make: "2715", model: "GTS 125 Touring Euro 5", year: 2021, 
        description: "The 125 i-get engine with Regulator Inverter Start & Stop System is ideal for daily running.", backcolor: "E6DDBF"},
     {make: "2715", model: "GTS 125 Euro 5", year: 2021, 
        description: "The 125 i-get engine with Regulator Inverter Start & Stop System is ideal for daily running. ", backcolor: "D3DDD8"},
     {make: "2715", model: "GTS 125 75th Euro 5", year: 2021, 
        description: "The Vespa 75th sports all sorts of details that make it a true classic.", backcolor: "BEC0C2"},
    {make: "2715", model: "GTS 300 75th Euro 5", year: 2021, 
        description: "The Vespa 75th sports all sorts of details that make it a true classic.", backcolor: "B5B7BA"}])



pictures = Picture.create([
    {pictureid:"1",item_id:1},
    {pictureid:"2",item_id:2},
    {pictureid:"3",item_id:3},
    {pictureid:"4",item_id:4},
    {pictureid:"5",item_id:5},
    {pictureid:"6",item_id:6},
    {pictureid:"7",item_id:7},
    {pictureid:"8",item_id:8},
    {pictureid:"9",item_id:9},
    {pictureid:"10",item_id:10},
])
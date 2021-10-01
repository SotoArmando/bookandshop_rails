# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = Item.create([{make:"2715",model:"B-Bone",year:2015},
{make:"2718",model:"Besbi",year:2015},
{make:"2726",model:"Daystar",year:2015},
{make:"2728",model:"Daystar 125",year:2015},
{make:"2745",model:"RoadSport",year:2015},
{make:"2747",model:"RoadSport 125",year:2015},
{make:"2756",model:"S1",year:2015},
{make:"2763",model:"S3 125",year:2015},
{make:"2764",model:"S3 Advance",year:2015},
{make:"2773",model:"VJF 250",year:2015}])

pictures = Picture.create([
    {pictureid:"5562",item_id:1},
    {pictureid:"5568",item_id:2},
    {pictureid:"5582",item_id:3},
    {pictureid:"5586",item_id:4},
    {pictureid:"5610",item_id:5},
    {pictureid:"5613",item_id:6},
    {pictureid:"5634",item_id:7},
    {pictureid:"5645",item_id:8},
    {pictureid:"5647",item_id:9},
    {pictureid:"5660",item_id:10},
])
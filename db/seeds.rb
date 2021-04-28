# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
Category.destroy_all

toread = Category.create(name: 'To Read'),
reading = Category.create(name: 'Reading'),
finished = Category.create(name: 'Finished'),

Book.create([
{title: "The Good Sister",image_url: "https://booklistqueen.com/wp-content/uploads/the-good-sister-sally-hepworth.jpg",remarks: "done in 3days", category: finished},
{title: "The Vanishing Half", image_url: "https://images4.penguinrandomhouse.com/cover/9780593286104", remarks:"Read till page 20", category: toread},
{title: "Lord of the Flies", image_url: "https://media.npr.org/assets/bakertaylor/covers/l/lord-of-the-flies/9780399501487_custom-16f49e664528eec135f04948cd7384b93c063a08-s600-c85.webp",remarks: "referred by Justin.",category:reading},
{title: "The Hobbit", image_url: "https://media.npr.org/assets/bakertaylor/covers/h/hobbit-or-there-and-back-again/9780345339683_custom-70a1718cd320dd9557789bbb7a1a004349156b48-s600-c85.webp", remarks: "looking forward to Read", category:reading},
{title: "Divergent series", image_url:"https://media.npr.org/assets/bakertaylor/covers/d/divergent/9780062024039_custom-6b2ed0b3ebbd559fe8a0527ec3f7d4ca7aecf427-s600-c85.webp",remarks: "Still reading all.",category: reading},
{title:"Flowers For Algernon", image_url:"https://media.npr.org/assets/bakertaylor/covers/f/flowers-for-algernon/9780156030304_custom-6e548494c903bcb00c0e7def3d16bf506fe44cbe-s600-c85.webp", remarks:"page 95", category: reading}
])

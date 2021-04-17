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
{title: "Fahrenheit 451",image_url: "https://media.npr.org/assets/bakertaylor/covers/f/fahrenheit-451/9781451673319_custom-90768645bbf0156499f341fdaa4acd3e3e3cecc1-s600-c85.webp",likes: 4, remarks: "In a far future world, television dominates, and books are outlawed. The totalitarian regime has ordered all books to be burned by firemen, whose job is to start the fires rather than stop them. But one fireman begins to see the value of the printed word.", category: finished},
{title: "The Hitchhiker's Guide to the Galaxy series", image_url: "https://media.npr.org/assets/bakertaylor/covers/t/the-ultimate-hitchhikers-guide-to-the-galaxy/9780345453747_custom-829c890084eb722b8042af3994aa9a27bf12044f-s600-c85.webp",likes: 3, remarks:"In this collection of novels, Arthur Dent is introduced to the galaxy at large when he is rescued by an alien friend seconds before Earth's destruction, and embarks on a series of amazing adventures, from the mattress swamps of Sqornshellous Zeta to the Restaurant at the End of the Universe", category: reading},
{title: "Harry Potter ", image_url: "https://media.npr.org/assets/bakertaylor/covers/manually-added/harry-potter_custom-61a3782c85bb56dfb89436be2ec11cfaf5b84201-s600-c85.webp", likes: 2, remarks: "enjoying it",  category: reading},
{title: "Lord of the Flies", image_url: "https://media.npr.org/assets/bakertaylor/covers/l/lord-of-the-flies/9780399501487_custom-16f49e664528eec135f04948cd7384b93c063a08-s600-c85.webp", likes: 5,  remarks: "The classic study of human nature depicts the degeneration of a group of schoolboys marooned on a desert island. Ralph, Piggy, Simon and their fellow castaways attempt to develop their own society — and fail disastrously.",category: finished},
{title: "The Hobbit", image_url: "https://media.npr.org/assets/bakertaylor/covers/h/hobbit-or-there-and-back-again/9780345339683_custom-70a1718cd320dd9557789bbb7a1a004349156b48-s600-c85.webp",likes: 4, remarks: "looking forward to Read", category:toread},
{title: "Divergent series", image_url:"https://media.npr.org/assets/bakertaylor/covers/d/divergent/9780062024039_custom-6b2ed0b3ebbd559fe8a0527ec3f7d4ca7aecf427-s600-c85.webp", likes: 5, remarks: "timeless classic explores human behaviour and the collective conscience",remarks: "In a future Chicago, 16-year-old Beatrice Prior must choose among five predetermined factions to define her identity for the rest of her life, a decision made more difficult when she discovers that she is an anomaly who does not fit into any one group, and that the society she lives in is not perfect after all.",category: finished},
{title:"Flowers For Algernon", image_url:"https://media.npr.org/assets/bakertaylor/covers/f/flowers-for-algernon/9780156030304_custom-6e548494c903bcb00c0e7def3d16bf506fe44cbe-s600-c85.webp", likes: 2, remarks:"When brain surgery makes a mouse into a genius, dull-witted Charlie Gordon wonders if it might also work for him. It does ... but then the mouse begins to regress.", category: reading}
])

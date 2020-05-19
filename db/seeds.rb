# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Users seeds"
Booking.destroy_all
Racket.destroy_all
User.destroy_all

puts "Creating some Users"


benoit = { first_name: "Benoit", last_name: "Bargès", email: "benoit@gmail.com", password: "tennis" }

augustin =  { first_name: "Augustin", last_name: "Lazarus", email: "augustin@gmail.com", password: "tennis" }

francois =  { first_name: "François", last_name: "Desazars", email: "francois@gmail.com", password: "tennis" }

alexandre =  { first_name: "Alexandre", last_name: "Deniau", email: "alexandre@gmail.com", password: "tennis" }

[ benoit, augustin, francois, alexandre ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end
puts "Finished!"


puts "Cleaning Rackets seeds"

Racket.destroy_all

puts "Creating some Rackets"


babolat = Racket.new({
  description: "La raquette Babolat Pure Aero Roland-Garros se dévoile sous vos yeux avec un design inspiré de l'ocre parisien. La raquette la plus connue dans le monde pour la qualité de sa prise d'effet. La gamme de raquettes utilisée par Rafael Nadal, Jo-Wilfried Tsonga, Benoit Paire et Caroline Wozniacki conserve sa prise d'effet légendaire tout en se dotant de plus de contrôle. ",
  model: "BABOLAT PURE AERO ROLAND-GARROS (300 GR)",
  price: 15,
  location: "Paris",
  user: User.find_by(first_name: "Benoit"),
})
babolat.photo.attach(io: File.open("app/assets/images/racket.jpg"), filename: "racket.jpg", content_type: "image/jpg")
babolat.save!

dunlop = Racket.new({
  description: "Dunlop continue de compléter ses gammes afin de proposer un modèle pour chaque type de joueur. Avec cette gamme Dunlop Sx, l'accent est mis sur le Spin extrême pour proposer une raquette qui conviendra aux joueurs appréciant mettre de la sécurité dans leur frappe, tout en disposant d'une grande puissance afin de déstabiliser vos adversaires. Créée avec l'aide de Patrick Mouratoglou, cette gamme de raquettes sera utilisée par plusieurs joueuses du Team Dunlop.",
  model: "DUNLOP SRIXON SX 300 LS",
  price: 14,
  location: "Marseille",
  user: User.find_by(first_name: "François"),
})
dunlop.photo.attach(io: File.open("app/assets/images/racket.jpg"), filename: "racket.jpg", content_type: "image/jpg")
dunlop.save!


head = Racket.new({
  description: "Avec un design retravaillé à partir du logo de la marque en jouant sur l'asymétrie tout en ajoutant la dernière innovation de la marque, cette raquette Head Speed a toutes les clés pour vous assurer la victoire. Adoptée par Novak Djokovic et Alexander Zverev, cette gamme vous assurera une grande vitesse de balle pour déborder vos adversaires tout en maîtrise.",
  model: "HEAD GRAPHENE 360 SPEED MP LITE (275 GR)",
  price: 12,
  location: "Nice",
  user: User.find_by(first_name: "Alexandre"),
})
head.photo.attach(io: File.open("app/assets/images/racket.jpg"), filename: "racket.jpg", content_type: "image/jpg")
head.save!

prince = Racket.new({
  description: "Cette raquette Prince Phantom 100P est un modèle pour les joueurs à la recherche du contrôle absolu ! En effet, cette gamme de raquette dispose de la section la plus fine du marché pour vous offrir les meilleures sensations et une précision inégalée. Sa faible rigidité va également améliorer le confort et votre maîtrse de chaque frappe. Cette version 100P dispose d'un coloris violet métallisé qui ne se révèle qu'à la lumière.",
  model: "PRINCE PHANTOM 100P (310 GR)",
  price: 16,
  location: "Toulouse",
  user: User.find_by(first_name: "Augustin"),
})
prince.photo.attach(io: File.open("app/assets/images/racket.jpg"), filename: "racket.jpg", content_type: "image/jpg")
prince.save!

puts "Finished!"

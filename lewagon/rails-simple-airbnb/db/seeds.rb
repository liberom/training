# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Spacious Flat in Ohio',
  address: '578 Shalon Club, Wesleyville, OH 67990',
  description: 'Commodi incidunt eius. Aut alias deserunt. Corrupti unde tempore.',
  price_per_night: 100,
  number_of_guests: 4
)
Flat.create!(
  name: 'Light Flat in Pennsylvania',
  address: '587 Rosanna Ford, Port Junieview, PA 44064-5615',
  description: 'Voluptas unde aut. Porro voluptatem quos. Quia deleniti nisi.',
  price_per_night: 60,
  number_of_guests: 2
)
Flat.create!(
  name: 'Garden Flat in West Virginia',
  address: 'Apt. 635 8260 Bartoletti Radial, Fredrickachester, WV 46209',
  description: 'Harum necessitatibus ut. Asperiores voluptate autem. Tenetur vel occaecati.',
  price_per_night: 70,
  number_of_guests: 3
)

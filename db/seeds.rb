
10.times do

Song.create(

  name: Faker::Music.name,
  artist: Faker::RockBand.name,
  rating: Faker::Music.instrument 

  )
end 
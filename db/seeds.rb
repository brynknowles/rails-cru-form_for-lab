# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

10.times do
    Artist.create(name: Faker::FunnyName.unique.name, bio: Faker::GreekPhilosophers.unique.quote)
end

10.times do
    Genre.create(name: Faker::Music.unique.genre)
end

30.times do
    Song.create(name: Faker::TvShows::TwinPeaks.unique.location, artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
end

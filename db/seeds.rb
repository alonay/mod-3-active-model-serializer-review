# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
User.create(name: Faker::Name.name_with_middle,
            email: Faker::Internet.free_email,
            password_digest: "a",
            img_url: Faker::Avatar.image,
            favorite_genre: Faker::Book.genre,
            bio: Faker::Dune.quote,
            latitude: Faker::Address.latitude,
            longitude: Faker::Address.longitude)
end

200.times do
Book.create(title: Faker::Book.title,
            author: Faker::Book.author,
            description: Faker::Company.catch_phrase,
            genre: Faker::Book.genre,
            isbn: Faker::Code.isbn,
            publisher:  Faker::Book.publisher,
            user: User.find(Random.rand(50)+1))
end

200.times do
Review.create(content: Faker::Hipster.sentence,
              book: Book.find(Random.rand(200)+1),
              user: User.find(Random.rand(50)+1))
end

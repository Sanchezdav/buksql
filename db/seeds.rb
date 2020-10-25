10.times do
  Book.find_or_create_by(
    user: User.first,
    title: Faker::Book.title,
    author: Faker::Book.author,
    publisher: Faker::Book.publisher,
    genre: Faker::Book.genre
  )
end

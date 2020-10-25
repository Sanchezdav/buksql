class Mutations::CreateBook < Mutations::BaseMutation
  argument :params, Types::Input::BookInputType, required: true

  field :book, Types::BookType, null: false
  field :errors, [String], null: false

  def resolve(params:)
    book_params = Hash(params)
    book = Book.new(book_params)
    book.user = User.first

    if book.save
      {
        book: book,
        errors: []
      }
    else
      {
        book: nil,
        errors: book.errors.full_messages
      }
    end
  end
end

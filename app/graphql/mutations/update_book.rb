class Mutations::UpdateBook < Mutations::BaseMutation
  argument :id, ID, required: true
  argument :params, Types::Input::BookInputType, required: true

  field :book, Types::BookType, null: false
  field :errors, [String], null: false

  def resolve(id:, params:)
    book_params = Hash(params)
    book = Book.find(id)

    if book.update(book_params)
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

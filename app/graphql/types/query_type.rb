module Types
  class QueryType < Types::BaseObject
    # User Queries
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    # Book Queries
    field :books, [Types::BookType], null: false

    def books
      Book.all
    end

    field :book, Types::BookType, null: false do
      argument :id, ID, required: true
    end

    def book(id:)
      Book.find(id)
    end
  end
end

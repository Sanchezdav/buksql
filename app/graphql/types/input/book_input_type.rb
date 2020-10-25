module Types
  module Input
    class BookInputType < Types::BaseInputObject
      argument :title, String, required: true
      argument :author, String, required: true
      argument :publisher, String, required: false
      argument :genre, String, required: false
    end
  end
end

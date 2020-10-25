# BuksQL

This is an example application about how GrapQL works.

## Stack

- Ruby 2.6
- Rails 6
- SQLite

## Developmet

Just clone this repo and run `bundle install` to get all the dependencies, after that you can run your server with `rails s` or `foreman start` if you want to execute webpack server as well (in case you added React for example).

You can add data to the database running `rails db:seed` and finally you can visit `http://localhost:3000` (or port 5000 with foreman command) to test the app.

## GraphQL

To test the GraphQL endpoint you can visit `http://localhost:3000/graphiql` to open de GraphQL tool.

Some examples of code:

```
# Examples of Queries

query {
  users {
    email
  }
  
  user(id: 1) {
    email
    firstName
    lastName
    booksCount
    books {
      title
    }
  }
  
  book(id: 1) {
    title
    author
  }
}

# Examples of mutations

mutation {
  createBook(input: {
    params: {
     	title: "Metaprogramming Ruby",
    	author: "Paolo Perrotta" 
    }
  }) {
    book {
      id
      title
      author
      genre
    }
    errors
  }

  updateBook(input: {
    id: 16,
    params: {
     	title: "Metaprogramming Ruby 2",
    	author: "Paolo Perrotta",
      genre: "programming"
    }
  }) {
    book {
      id
      title
      author
      genre
    }
    errors
  }
}
```

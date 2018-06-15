# README

This is a demo app in order to highlight a bug in graphql-docs gem, which is the fact that there is no mutation index generated
(although query index is generated normally).

# Running the demo

As usual : 

```
bundle install
bundle exec rake db:migrate
bundle exec rake db:seed
rails s
```

Demo that the small graphQL schema works, open graphiql at http://localhost:3000/graphiql and run the following requests :

```
{
  article(id: 1) {
    id
    title
  }
}
```

```
mutation {
  updateArticle(articleId: 1, title: "new title") {
    article {
      id
      title
    }
    errors
  }
}
```

Generating the doc with graphql-docs

```
bundle exec rake graphql:gen_doc
```

Note : the task is defined in the file `/lib/task/graphql.rake`


The generated documentation is accessible at http://localhost:3000/graphql_api_doc

We can see that at the page http://localhost:3000/graphql_api_doc/operation/query/ all queries are listed with their descritpions, but
the page http://localhost:3000/graphql_api_doc/operation/mutation/ is empty.

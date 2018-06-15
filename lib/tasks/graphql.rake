namespace :graphql do
  desc "Generate the documentation for the GraphQL API of the application"
  task gen_doc: :environment do
    GraphQLDocs.build(
      schema: DemoGraphqlBugSchema.to_graphql, 
      output_dir: 'public/graphql_api_doc', 
      base_url: '/graphql_api_doc'
    )
  end

end

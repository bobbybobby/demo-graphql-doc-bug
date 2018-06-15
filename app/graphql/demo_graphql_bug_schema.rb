class DemoGraphqlBugSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end

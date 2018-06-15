class Types::MutationType < Types::BaseObject
  field :update_article, 'Update an article', mutation: Mutations::UpdateArticleMutation
end

class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :articles, [Types::ArticleType], "The list of all articles", null: false
  field :article, Types::ArticleType, "The article of given ID", null: false do
    argument :id, ID, required: true
  end
  
  def articles
    ::Article.all
  end

  def article(args)
    ::Article.find(args[:id])
  end
end

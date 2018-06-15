class Mutations::UpdateArticleMutation < Mutations::BaseMutation
  null false

  argument :article_id, ID, required: true
  argument :title, String, required: false
  argument :text, String, required: false

  field :article, Types::ArticleType, null: false
  field :errors, [String], null: false

  def resolve(article_id:, title: nil, text: nil)
    opts = {}
    opts[:title] = title if title
    opts[:text] = text if text

    article = Article.find(article_id)
    article.update(opts)
    return {errors: [], article: article}
  end

end

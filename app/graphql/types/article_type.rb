class Types::ArticleType < Types::BaseObject
  description "An article with a title and some text"

  field :id, ID, null: false
  field :title, String, null: true
  field :text, String, null: true
end

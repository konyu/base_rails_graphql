# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :comments, [CommentType]

    def comments
      Loaders::AssociationLoader.for(Post, :comments).load(object)
    end
  end
end

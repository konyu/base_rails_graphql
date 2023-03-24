# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :id, ID
    field :name, String, null: false
    field :post_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
  end
end

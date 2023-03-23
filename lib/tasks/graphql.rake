# frozen_string_literal: true

# rails graphql:schema:dump コマンドでGraphqlスキーマを出力
require 'graphql/rake_task'
GraphQL::RakeTask.new(schema_name: 'BaseRailsSchema', directory: 'docs')

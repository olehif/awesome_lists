# frozen_string_literal: true

require 'graphql/client'
require 'graphql/client/http'

module Github
  GITHUB_GRAPHQL_ENDPOINT = 'https://api.github.com/graphql'

  HTTP = GraphQL::Client::HTTP.new(GITHUB_GRAPHQL_ENDPOINT) do
    def headers(_context)
      { "Authorization": "Bearer #{ENV['GITHUB_TOKEN']}" }
    end
  end

  Schema = GraphQL::Client.load_schema(HTTP)
  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
end

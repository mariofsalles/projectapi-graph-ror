# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false, description: 'An example field added by the generator'
    def test_field
      'Hello World!'
    end

    field :login, String, null: true, description: 'Login a user' do
      argument :email, String, required: true
      argument :password, String, required: true
    end
    def login(email:, password:)
      if user = User.where(email: email).first&.authenticate(password)
        user.sessions.create.token
      end
    end

    field :current_user, UserType, null: true, description: 'The currently logged in user'
    def current_user
      context[:current_user]
    end
  end
end

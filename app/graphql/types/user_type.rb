module Types
  class UserType < Types::BaseObject
    graphql_name "User"
    description "A user instance"

    field :id, ID, null: false
    field :email, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :admin, Boolean, null: false
  end
end

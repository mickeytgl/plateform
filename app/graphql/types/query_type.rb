module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
    
    field :users, [UserType], null: false,
      description: "A list of all users"
    field :user, UserType, null: false do
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def user(id: nil)
      User.find id
    end
  end
end

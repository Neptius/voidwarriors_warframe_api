defmodule VoidwarriorsWarframeApiWeb.Schema do
  use Absinthe.Schema

  alias V

  import_types(VoidwarriorsWarframeApiWeb.Schema.Types)

  query do
    @desc "Get a list of all users"
    field :users, list_of(:user) do
      # Resolvee
      resolve(&Resolver.UserResolver.users/3)
    end
  end

  # mutation do

  # end

  # subscription do

  # end
end

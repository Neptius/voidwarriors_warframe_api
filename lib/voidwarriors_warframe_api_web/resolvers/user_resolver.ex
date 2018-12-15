defmobile VoidwarriorsWarframeApiWeb.Resolvers.UserResolver do
  alias VoidwarriorsWarframeApi.Accounts
  def users ( _ , _, _) do
    {:ok, Accounts.list_users}
  end
 end
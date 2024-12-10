# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     InfiniteScroll.Repo.insert!(%InfiniteScroll.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias InfiniteScroll.Posts

Enum.map(1..250, fn i ->
  %{title: "Post #{i}", body: "Body #{i}"}
  |> Posts.create_post()
end)

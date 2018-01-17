defmodule ExplorerWeb.UserListTest do
  use ExplorerWeb.FeatureCase, async: true

  import Wallaby.Query, only: [css: 1, css: 2]

  @logo css("img.header__logo")

  test "browses the home page", %{session: session} do
    session
    |> visit("/")
    |> assert_has(css(".header__title", text: "POA Network Explorer"))
    |> click(@logo)
    |> assert_has(css("main", text: "Welcome to our blockchain explorer."))
  end
end
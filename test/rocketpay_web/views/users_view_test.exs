defmodule RocketpayWeb.UsersViewTest do
  use RocketpayWeb.ConnCase, async: true

  alias Rocketpay.{User, Account}
  alias RocketpayWeb.UsersView

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders create.json" do
    params = %{
      name: "Paulo",
      password: "123456",
      nickname: "rios",
      email: "paulo@banana.com",
      age: 28,

    }

    {:ok, %User{id: user_id, account: %Account{id: account_id}} = user} = Rocketpay.create_user(params)

    response = render(UsersView, "create.json", user: user)

    expected_response = %{
      message: "User created",
      user: %{
        id: user_id,
        name: "Paulo",
        nickname: "rios",
        account: %{
          id: account_id,
          balance: Decimal.new("0.00")
        }
      }
    }

    assert expected_response == response
  end
end

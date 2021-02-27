defmodule RocketpayWeb.AccountsController do
  use RocketpayWeb, :controller

  alias Rocketpay.Account
  alias Rocketpay.Accounts.Transactions.Response, as: TransactionResponse

  action_fallback RocketpayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Rocketpay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Rocketpay.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Rocketpay.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end

    # Task
    # task = Task.async(fn -> Rocketpay.transaction(params) end)

    # with {:ok, %TransactionResponse{} = transaction} <- Task.await(task) do
    #   conn
    #   |> put_status(:ok)
    #   |> render("transaction.json", transaction: transaction)
    # end

    # Task em paralelo liberando a requisição, e o segundo processo roda a parte
    # Task.start(fn -> Rocketpay.transaction(params) end)
    # conn
    # |> put_status(:no_content)
    # |> text("")
  end
end

defmodule Nieemp.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false

  alias Nieemp.Repo
  alias Nieemp.Accounts.AccountType
  alias Nieemp.Accounts.Account

  # Account type.

  @doc """
  Returns the list of account types.
  """
  def list_account_types(), do: Repo.all(AccountType)

  @doc """
  Gets a single account type.

  Raises `Ecto.NoResultsError` if the account type does not exist.
  """
  def get_account_type!(id), do: Repo.get!(AccountType, id)

  @doc """
  Creates a account type.
  """
  def create_account_type(attrs \\ %{}) do
    %AccountType{}
    |> AccountType.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a account type.
  """
  def update_account_type(%AccountType{} = account_type, attrs) do
    account_type
    |> AccountType.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a account type.
  """
  def delete_account_type(%AccountType{} = account_type) do
    Repo.delete(account_type)
  end

  # Account.

  @doc """
  Gets a single account.

  Raises `Ecto.NoResultsError` if the account does not exist.
  """
  def get_account!(uuid), do: Repo.get!(Account, uuid)

  @doc """
  Creates a account.
  """
  def create_account(attrs \\ %{}) do
    %Account{}
    |> Account.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a account.
  """
  def update_account(%Account{} = account, attrs) do
    account
    |> Account.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a account.
  """
  def delete_account(%Account{} = account) do
    Repo.delete(account)
  end
end

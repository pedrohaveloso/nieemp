defmodule Nieemp.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias Nieemp.Repo

  alias Nieemp.Accounts.AccountType

  @doc """
  Returns the list of account types.

  ## Examples

      iex> list_account_types()
      [%AccountType, ...]

  """
  def list_account_types(), do: Repo.all(AccountType)

  @doc """
  Gets a single account type.

  Raises `Ecto.NoResultsError` if the account type does not exist.

  ## Examples

      iex> get_account_type!(1)
      %AccountType{}

      iex> get_account_type!(100)
      ** (Ecto.NoResultsError)

  """
  def get_account_type!(id), do: Repo.get!(AccountType, id)

  @doc """
  Creates a account type.

  ## Examples

      iex> create_account_type(%{key: value})
      {:ok, %AccountType{}}

      iex> create_account_type(%{key: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def create_account_type(attrs \\ %{}) do
    %AccountType{}
    |> AccountType.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a account type.

  ## Examples

      iex> update_account_type(account_type, %{key: value})
      {:ok, %Car{}}

      iex> update_account_type(account_type, %{key: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_account_type(%AccountType{} = account_type, attrs) do
    account_type
    |> AccountType.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a account type.

  ## Examples

      iex> delete_account_type(account_type)
      {:ok, %AccountType{}}

      iex> delete_account_type(account_type)
      {:error, %Ecto.Changeset{}}

  """
  def delete_account_type(%AccountType{} = account_type) do
    Repo.delete(account_type)
  end
end

# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Nieemp.Repo.insert!(%Nieemp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Nieemp.Repo
alias Nieemp.Accounts.AccountType

Repo.delete_all(AccountType)

Repo.insert!(%AccountType{key: "student"})
Repo.insert!(%AccountType{key: "egress"})
Repo.insert!(%AccountType{key: "company"})
Repo.insert!(%AccountType{key: "admin"})

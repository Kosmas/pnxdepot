ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Pnxdepot.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Pnxdepot.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Pnxdepot.Repo)


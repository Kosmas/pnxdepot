defmodule Pnxdepot.Product do
  use Pnxdepot.Web, :model

  schema "products" do
    field :title, :string
    field :description, :string
    field :image_url, :string
    field :price, :decimal

    timestamps
  end

  @required_fields ~w(title description image_url price)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end

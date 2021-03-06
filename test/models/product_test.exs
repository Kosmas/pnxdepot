defmodule Pnxdepot.ProductTest do
  use Pnxdepot.ModelCase

  alias Pnxdepot.Product

  @valid_attrs %{description: "some content", image_url: "some content", price: "120.5", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end

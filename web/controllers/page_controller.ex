defmodule Pnxdepot.PageController do
  use Pnxdepot.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

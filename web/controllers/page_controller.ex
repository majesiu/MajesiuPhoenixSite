defmodule MajesiuSite.PageController do
  use MajesiuSite.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def techs(conn, _params) do
    render conn, "techs.html"
  end
end

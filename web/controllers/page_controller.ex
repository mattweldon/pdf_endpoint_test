defmodule PdfEndpointTest.PageController do
  use PdfEndpointTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

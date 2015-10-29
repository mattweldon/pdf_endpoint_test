defmodule PdfEndpointTest.PageController do
  use PdfEndpointTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def pdf(conn, _params) do
    rendered_string = Phoenix.View.render_to_string(PdfEndpointTest.PageView, "index.html", conn: conn, layout: {PdfEndpointTest.LayoutView, "app.html"})
    conn
    |> PlugPdf.call(rendered_string, "downloaded_pdf.pdf")
  end
end

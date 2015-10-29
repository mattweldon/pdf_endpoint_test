defmodule PdfEndpointTest.PageController do
  use PdfEndpointTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def pdf(conn, _params) do
    conn
    |> PlugPdf.call(PdfEndpointTest.PageView.render("index.html", layout: {PdfEndpointTest.LayoutView, "app.html"}), "downloaded_pdf.pdf")
  end
end

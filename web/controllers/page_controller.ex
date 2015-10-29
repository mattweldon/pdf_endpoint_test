defmodule PdfEndpointTest.PageController do
  use PdfEndpointTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def pdf(conn, _params) do
    {:safe, [_ | html]} = PdfEndpointTest.PageView.render("index.html")
    IO.inspect html
    {:ok, tmp_pdf}
      = %HtmlToPdf.Document{}
        |> HtmlToPdf.set_html(html)
        |> HtmlToPdf.generate_pdf

    conn
    |> put_resp_header("content-disposition", "attachment; filename='endpoint_test.pdf'")
    |> send_file(200, tmp_pdf)
  end
end

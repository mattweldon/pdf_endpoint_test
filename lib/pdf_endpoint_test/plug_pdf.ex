defmodule PlugPdf do
  # import Plug.Conn
  def call(conn, html, download_filename) do
    IO.inspect html
    {:ok, tmp_pdf}
      = %HtmlToPdf.Document{}
        |> HtmlToPdf.set_html(html)
        |> HtmlToPdf.generate_pdf

    conn
    |> Plug.Conn.put_resp_header("content-disposition", "attachment; filename='#{download_filename}'")
    |> Plug.Conn.send_file(200, tmp_pdf)
  end
end

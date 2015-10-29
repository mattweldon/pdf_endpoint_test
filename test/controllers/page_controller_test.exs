defmodule PdfEndpointTest.PageControllerTest do
  use PdfEndpointTest.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end

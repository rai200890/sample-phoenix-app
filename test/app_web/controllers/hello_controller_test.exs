defmodule AppWeb.HelloControllerTest do
  use AppWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/hello"
    assert html_response(conn, 200) =~ "From template: Hello world!"
  end
end

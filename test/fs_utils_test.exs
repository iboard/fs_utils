defmodule FsUtilsTest do
  #  ── fixtures
  #     ├── p1
  #     │   ├── p1.1
  #     │   │   └── p1.1.1
  #     │   └── p1.2
  #     │       └── p1.2.1
  #     └── p2
  #         └── p2.1
  #
  use ExUnit.Case
  # doctest FsUtils

  test "read the tree structure from a given root-path" do
    expected = %{
      "index.html" => "Overall Index\n",
      "p1" => %{
        "index.html" => "Index At P1\n",
        "p1.1" => %{"index.html" => "Index at P1.1\n", "p1.1.1" => %{}},
        "p1.2" => %{"p1.2.1" => %{}}
      },
      "p2" => %{"p2.1" => %{}}
    }

    assert expected == FsUtils.tree("test/fixtures")
  end
end

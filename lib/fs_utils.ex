defmodule FsUtils do
  @moduledoc """
  Documentation for FsUtils. A collection of little helpers for the file system.

  ### Install

  See the [README](./readme.html)
  """

  @doc """
  Get the tree as a map.

  The value of each key is either another Map (subdirectory) or
  a binary (the content of the file)

  ## Examples

      iex> FsUtils.tree("test/fixtures")
      %{
        "fixtures" => %{
          "p1" => %{
            "p1.1" => %{ "p1.1.1" => %{ "index.html" => "<h1>Index</h1>"} },
            "p1.2" => %{ "p1.2.1" => %{} },
          },
          "p2" => %{
            "p2.1" => %{}
          }
        }
      }

  """
  def tree(root_path) do
    case File.ls(root_path) do
      {:ok, files_and_dirs} -> read_tree(root_path, files_and_dirs)
      {:error, reason} -> IO.inspect(reason, label: "Error")
    end
  end

  defp read_tree(parent_path, files_and_dirs) do
    Enum.reduce(files_and_dirs, %{}, fn f, acc ->
      p = Path.expand(f, parent_path)

      if File.dir?(p) do
        Map.put(acc, remove_parent(p, parent_path), read_tree(p, File.ls!(p)))
      else
        Map.put(acc, remove_parent(p, parent_path), File.read!(p))
      end
    end)
  end

  defp remove_parent(path, parent) do
    r = Path.expand(".", parent)
    String.replace_prefix(path, r <> "/", "")
  end
end

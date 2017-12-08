defmodule Mixwars do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://www.codewars.com"
  plug Tesla.Middleware.JSON

  @moduledoc """
  Functions for interacting with the Codewars API.
  """

  @doc """
  Returns a kata with the given id or slug.

  ## Examples

      iex> Mixwars.get_kata("valid-braces")["name"]
      "Valid Braces"

  """
  def get_kata(id_or_slug) do
    get("/api/v1/code-challenges/#{id_or_slug}")
    |> Map.get(:body)
  end
end

defmodule Mix.Tasks.Codewars.Kata do
    use Mix.Task
  
    @shortdoc "Says hello from Mixwars"
    def run(id_or_slug) do
      id_or_slug
      |> Mixwars.get_kata
      |> Map.get("name")
      |> Mix.shell.info
    end
  end
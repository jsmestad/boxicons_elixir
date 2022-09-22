defmodule Mix.Tasks.Boxicons.Generate do
  @moduledoc false
  @shortdoc false
  use Mix.Task

  @src_path "./boxicons/svg/"
  @target_file "lib/boxicons.ex"

  @shortdoc "To run `mix boxicons.generate`. Converts source SVG files into heex components."
  def run(_) do
    System.cmd("git", ["clone", "https://github.com/atisawd/boxicons.git"])

    regular = Path.wildcard(Path.join(@src_path, "regular/**/*.svg"))
    solid = Path.wildcard(Path.join(@src_path, "solid/**/*.svg"))

    ordered_icons = regular ++ solid

    icons =
      Enum.group_by(ordered_icons, &function_name(&1), fn file ->
        for path <-
              file
              |> File.read!()
              |> String.split(">")
              |> List.delete_at(-1)
              |> Enum.map(&(&1 <> ">")),
            path = String.trim(path),
            String.starts_with?(path, "<path"),
            do: path
      end)

    Mix.Generator.copy_template(
      Path.expand("assets/boxicons.exs"),
      @target_file,
      [icons: icons],
      force: true
    )

    Mix.Task.run("format")
    System.cmd("rm", ["-rf", "boxicons"])
  end

  defp function_name(file) do
    file
    |> Path.basename()
    |> Path.rootname()
    |> String.trim_leading("bxs-")
    |> String.trim_leading("bxl-")
    |> String.trim_leading("bx-")
    |> String.split("-")
    |> Enum.join("_")
  end
end

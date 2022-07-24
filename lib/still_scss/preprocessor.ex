defmodule StillScss.Preprocessor do
  use Still.Preprocessor
  alias Still.SourceFile

  @moduledoc """
  This module implements a Still preprocessor to process .scss
  and .sass files.
  """
  @impl true
  def render(%SourceFile{} = source_file) do
    {:ok, content} = Still.Utils.get_input_path(source_file.input_file)
      |> Sass.compile_file()
    %{source_file | content: content, extension: ".css"}
  end
end

defmodule StillScss.Preprocessor do
  use Still.Preprocessor
  alias Still.SourceFile

  @moduledoc """
  This module implements a Still preprocessor to process .scss
  and .sass files.
  """
  @impl true
  def render(%SourceFile{} = source_file) do
    {:ok, content} = Sass.compile(source_file.content)
    %{source_file | content: <<>>}
  end
end

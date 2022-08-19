# still_scss

`still_scss` provides a [Still preprocessor](https://hexdocs.pm/still/preprocessors.html#custom-preprocessors) to support processing .scss files in [Still](https://stillstatic.io/) projects.

## Usage

Add the dependency to your project's `mix.exs`:

```elixir
def deps do
  [
    {:still_scss, git: "https://github.com/craftweg/still_scss.git"}
  ]
end
```

Then edit the project's configuration to include the `StillScss.Preprocessor` preprocessor:

```exs
config :still,
  dev_layout: false,
  input: Path.join(Path.dirname(__DIR__), "priv/site"),
  output: Path.join(Path.dirname(__DIR__), "_site"),
  preprocessors: %{
    ".scss" => [
      StillScss.Preprocessor,
      Still.Preprocessor.OutputPath,
      Still.Preprocessor.URLFingerprinting,
      Still.Preprocessor.Save
    ]
}
```

You can then refer to your `.scss` file using the [`link_to_css` helper](https://hexdocs.pm/still/Still.Compiler.TemplateHelpers.html#link_to_css/3):

```slime
= link_to_css @env, "/css/styles.scss", media: "all"
```

## Development

### Release

To release a new version of the package bump the version in `mix.exs` and run `mix hex.publish`. Note that you need to have the right permissions on [hex](https://hex.pm).

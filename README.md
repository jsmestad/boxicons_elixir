# Boxicons

[Boxicons](https://boxicons.com) are "simple open source icons carefully crafted for designers & developers". This package gives you Elixir functions to drop Boxicons into your HTML, styled with arbitrary classes.

This library provides optimized svgs for regular and solid Boxicons packaged as a Phoenix Component.

## Installation

The package can be installed by adding `boxicons` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:boxicons, "~> 0.1.0"}
  ]
end
```

After that run `mix deps.get`

## Usage

The components are provided by the `Boxicons` module. Each icon is a Phoenix Component you can use in your HEEx templates.

For icons with both a `regular` and `solid` variant, the regular style is used:

```eex
<Boxicons.sushi />
```

You can select the solid variant by passing a flag:

```eex
<Boxicons.sushi solid />
```

You can also provide arbitrary HTML attributes to the svg tag, such as classes:

```eex
<Boxicons.sushi class="w-6 h-6 text-gray-500" />
```

For a full list of icons see [the docs](https://hexdocs.pm/boxicons/api-reference.html) or [boxicons.com](https://boxicons.com/).

## Credits

This project is inspired by the [heroicons_elixir](https://github.com/mveytsman/heroicons_elixir) library.

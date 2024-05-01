# Seiver

Seiver is a proof of concept that I'm working on, It's basically an csv generator with a HUGE AMOUNT OF LINES in the fastest way.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `seiver` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:seiver, "~> 0.1.0"}
  ]
end
```

## How to run
```elixir
Seiver.Seed.ExplosiveCsv.kabuum(3_000_000)
:ok
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/seiver>.


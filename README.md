# README

Some little [Elixir][]-helpers around the file system. The package was created
on 2020-09-20 for my personal convenience and will grow while being used in
several of my daily projects.

My aim is to produce some well-crafted packages for stuff I did in every
single Elixir-project by now. Other packages for `img_utils`, `net_utils`, and
more will follow (as of the current plan ;-))

## Installation

### Latest Release

Use the latest HEX-package built.
```elixir
def deps do
  [
    {:fs_utils, "~> 0.1" }
  ]
end
```

### Latest Snapshot

Or use the latest snapshot (branch master) from Github.
```elixir
def deps do
  [
    {:fs_utils, git: "https://github.com/iboard/fs_utils.git" }
  ]
end
```

Documentation can be generated locally with
[ExDoc](https://github.com/elixir-lang/ex_doc)

    mix docs && open doc/index.html

and is published on [HexDocs](https://hexdocs.pm) at

  - [https://hexdocs.pm/fs_utils](https://hexdocs.pm/fs_utils).


[Elixir]: https://elixir-lang.org

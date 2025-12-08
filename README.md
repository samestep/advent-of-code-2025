# [Advent of Code 2025](https://adventofcode.com/2025)

My solutions, written in [Moss](https://github.com/moss-lang/moss).

If you use [direnv](https://direnv.net/) and have [Nix](https://nixos.org/) with [flakes](https://wiki.nixos.org/wiki/Flakes) enabled, the easiest way to get all necessary dependencies is via the dev shell provided in this repo:

```sh
echo use flake > .envrc && direnv allow
```

Once you've configured the [session cookie required by `aoc`](https://github.com/scarvalhojr/aoc-cli/tree/0.12.0?tab=readme-ov-file#session-cookie-), you can download your day 1 puzzle input like this:

```sh
aoc download --input-only --year=2025 --day=1 --input-file=day01/input.txt
```

Then you can run the first day 1 puzzle like this:

```sh
moss day01/puzzle1.moss day01/input.txt
```

The only puzzle that requires input in a different format is part 1 of day 8:

```sh
moss day08/puzzle1.moss day08/input.txt 1000
```

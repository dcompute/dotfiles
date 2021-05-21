# Load additional configurations.
# Files ending in `.conf` in `~/.zshrc.d/` will be sourced.
for conf in ~/.zshrc.d/*.conf; do
  [ -r "$conf" ] && [ -f "$conf" ] && source "$conf";
done;
unset conf;


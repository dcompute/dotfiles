export PATH="$HOME/Applications:$PATH";

# Load additional configurations.
# Files ending in `.conf` in `~/.bash_profile.d/` will be sourced.
for file in ~/.bash_profile.d/*.conf; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Enable bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Autocorrect `cd` path names
shopt -s cdspell;


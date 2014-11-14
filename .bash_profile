export PATH="$HOME/Applications:$PATH";

# Load additional configurations.
# Any file found in `~/.bash_addons/` will be sourced.
for file in ~/.bash_profile.d/*; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Enable bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Autocorrect `cd` path names
shopt -s cdspell;


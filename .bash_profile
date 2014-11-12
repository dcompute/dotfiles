export PATH="$HOME/Applications:$PATH";

# Load additional configurations.
# Any file found in `~/.bash_addons/` will be sourced.
for file in ~/.bash_addons/*; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Autocorrect `cd` path names
shopt -s cdspell;

export PATH="/usr/local/bin:$HOME/Applications:$PATH";

# Load additional configurations.
# Files ending in `.conf` in `~/.bash_profile.d/` will be sourced.
for file in ~/.bash_profile.d/*.conf; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add tab completion for many Bash commands
# Install via `brew install bash-completion`
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Doing this because RVM is terrible and hates puppies.
source ~/.profile


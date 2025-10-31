# if u need to install the command-not-found plugin, run:
# brew tap homebrew/command-not-found
# This code below will source the command-not-found handler script
# HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
# if [ -f "$HB_CNF_HANDLER" ]; then
#   source "$HB_CNF_HANDLER"
# fi


HOMEBREW_COMMAND_NOT_FOUND_HANDLER="$(brew --repository)/Library/Homebrew/command-not-found/handler.sh"
if [ -f "$HOMEBREW_COMMAND_NOT_FOUND_HANDLER" ]; then
  source "$HOMEBREW_COMMAND_NOT_FOUND_HANDLER";
fi

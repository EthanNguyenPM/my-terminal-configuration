# if u need to install the command-not-found plugin, run:
# brew tap homebrew/command-not-found
# This code below will source the command-not-found handler script
HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
  source "$HB_CNF_HANDLER"
fi

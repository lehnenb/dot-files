set PATH "$HOME/.rbenv/bin:$PATH $HOME/bin"

rbenv init - | source

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set GOEXEC "/usr/local/go/bin"
set GOPATH "$HOME/go"
set GOBIN "$GOPATH/bin"
set DIFF_SO_FANCY "/Users/brunolehnen/diff-so-fancy" 
set TERRAFORM "/Users/brunolehnen/apps/terraform"
set -gx FZF_DEFAULT_COMMAND "rg --files --hidden"

set -gx PATH $GOEXEC $PATH
set -gx PATH $GOPATH $PATH
set -gx PATH $GOBIN $PATH
set -gx PATH $DIFF_SO_FANCY $PATH
set -gx PATH $TERRAFORM $PATH


# Aliases
alias be="bundle exec"
alias gs="git status"
alias berspec="bundle exec rspec"
alias rserver="rails sever"
alias ddb="pgcli postgresql://postgres:postgres@localhost:5432/backend_development"

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

[[ -s ~/.bashrc ]] && source ~/.bashrc

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias subl="sublime -a"
alias vim="open -a /Applications/MacVim.app/contents/MacOS/MacVim"
alias telegram="open -a /Applications/Telegram.app/contents/MacOS/Telegram"
alias skype="open -a /Applications/Skype.app/Contents/MacOS/Skype"
alias safari="open -a /Applications/Safari.app/Contents/MacOS/Safari"
alias canary="open -a /Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary"
alias firefox="open -a /Applications/FirefoxDeveloperEdition.app/Contents/MacOS/FirefoxDeveloperEdition"
alias teamviewer="open -a /Applications/TeamViewer.app/Contents/MacOS/TeamViewer"
alias pokerstars="open -a /Applications/PokerStars.app/Contents/MacOS/PokerStars"

alias wvm="cd /web/video/vps/frontend/themes"

#SHOW
alias lr="ls -l"
alias la="ls -la"
alias ld="ls -ld */"
alias lh="ls -ld .?*"
alias lf="find . -maxdepth 1 -type f"
alias del="rm -r -f"

#BASH
alias sb="source ~/.bashrc"
alias sba="source ~/.bash_aliases"
alias sbp="source ~/.bash_profile"
sudo sh -c 'grep -q -F "$(brew --prefix zsh)/bin/zsh" /etc/shells || echo "$(brew --prefix zsh)/bin/zsh" >> /etc/shells'

if [ "$SHELL" != "$(brew --prefix zsh)/bin/zsh" ]
then
    chsh -s $(brew --prefix zsh)/bin/zsh
fi
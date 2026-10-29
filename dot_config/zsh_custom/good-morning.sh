good-morning() {
 brew update
 brew upgrade
 brew cleanup

 pkg-backup
}

pkg-backup() {
    nvm use --silent default
    brew bundle dump --global --force
}

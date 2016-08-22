#!/usr/bin/env bash

# If we on OS X, install homebrew
if [[ `uname` == 'Darwin' ]]; then
  which -s brew
  if [[ $? != 0 ]]; then
    echo 'Installing Homebrew...'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    # Install command-line tools using Homebrew.
    # Make sure we’re using the latest Homebrew.
    brew update

    # Install GNU core utilities (those that come with macOS are outdated).
    # Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    brew install coreutils
    ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

    # Install some other useful utilities like `sponge`.
    brew install moreutils
    # Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
    brew install findutils
    # Install GNU `sed`, overwriting the built-in `sed`.
    brew install gnu-sed --with-default-names

    # Install Bash 4.
    # Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
    # running `chsh`.
    brew install bash
    brew tap homebrew/versions
    brew install bash-completion2

    brew install homebrew/completions/brew-cask-completion

    # Switch to using brew-installed bash as default shell
    if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
      echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
      chsh -s /usr/local/bin/bash;
    fi;

    # Install `wget` with IRI support.
    brew install wget --with-iri

    # Install more recent versions of some macOS tools.
    brew install vim --override-system-vi
    brew install homebrew/dupes/grep
    brew install homebrew/dupes/openssh
    brew install homebrew/dupes/screen

    # github util. imho better than hub
    brew install gh

    # Install other useful binaries
    brew install ack
    brew install the_silver_searcher

    brew install git
    brew install git-lfs
    brew install imagemagick --with-webp
    brew install node
    brew install rename
    brew install tree

    # Remove outdated versions from the cellar.
    brew cleanup
  fi
fi

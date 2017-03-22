# If we on OS X, install homebrew and tweak system a bit.
if [[ `uname` == 'Darwin' ]]; then
    # When setting up a new Mac, you may want to install some common Homebrew
    # formulae
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
        brew install bash-completion@2

        # Switch to using brew-installed bash as default shell
        if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
            echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
            chsh -s /usr/local/bin/bash;
        fi;

        # Install `wget` with IRI support.
        brew install wget --with-iri

        # Install more recent versions of some macOS tools.
        brew install vim --width-override-system-vi
        brew install homebrew/dupes/grep
        brew install homebrew/dupes/less
        brew install homebrew/dupes/openssh
        brew install homebrew/dupes/screen

        # github util. imho better than hub
        brew install hub

        # Install other useful binaries
        brew install the_silver_searcher

        brew install git
        brew install git-lfs
        brew install diff-so-fancy
        brew install imagemagick --with-webp
        brew install node
        brew install rename
        brew install tree

        # http://github.com/sindresorhus/quick-look-plugins
        echo 'Installing common apps and quick Look plugins...'
        brew tap caskroom/cask
        brew tap caskroom/versions
        brew tap phinze/cask
        brew install caskroom/cask/brew-cask
        brew install homebrew/completions/brew-cask-completion

        # Apps
        brew cask install iterm2
        brew cask install imagealpha
        brew cask install imageoptim
        brew cask install google-chrome-canary
        brew cask install firefoxnightly
        brew cask install webkit-nightly
        brew cask install chromium
        brew cask install licecap

        # Quick look plugins
        brew cask install suspicious-package
        brew cask install quicklook-json
        brew cask install qlmarkdown
        brew cask install qlstephen
        brew cask install qlcolorcode
    fi
fi


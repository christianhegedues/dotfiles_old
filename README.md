# Chris' Dotfiles

## What Is This?

This repository serves as my way to help me setup and maintain my Mac. It takes
the effort out of installing everything manually. Everything which is needed to
install my preffered setup of macOS is detailed in this readme. Feel free to
explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

## A Fresh OS X Setup

Follow these install instructions to setup a new Mac.

1. Update OS X to the latest version with the App Store
2. Install OS X Command Line Tools by running `xcode-select --install`
3. Enter your working directory (e.g. ~/Projects) and clone this repo `git clone git@github.com:christianhegedues/dotfiles.git`
4. Run `bootstrap.sh` script

Your Mac is now ready to use

## Installing Ruby versions and Bundler

Put *rbenv* to work with Bundler for painless Ruby upgrades. Further
informations and documentation can be found on [rbenv repository](https://github.com/rbenv/rbenv)

~~~ sh
# list all available versions:
$ rbenv install -l

# install a Ruby version:
$ rbenv install x.x.x

# sets the global version of Ruby
$ rbenv global x.x.x

# install Bundler
$ gem install bundler
~~~

## License

The MIT License. Please see [the license file](LICENSE.md) for more information.


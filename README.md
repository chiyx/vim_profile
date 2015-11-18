# The Pitchy vimrc

Pitchy's vim profile for edit js, python, c/c++, and so on...

# How to install

## required

* vim[7.3 or above] with python2, ruby, perl,lua support.

* cmake, python-dev installed. -- for YouCompleteMe Plugin

## clone and install the plugins

```sh
git clone https://github.com/chiyx/vim_profile.git ~/vim_profile
cd ~/vim_profile
./install_vimrc.sh
```

## compile the YouCompleteMe

```
cd ~/vim_profile/vundle_plugins/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer --gocode-completer
```


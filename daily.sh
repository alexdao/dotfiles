#!/usr/bin/env bash

brew update && brew upgrade
brew cask outdated | xargs brew cask reinstall


#!/usr/bin/env sh

# Google Cloud SDK
# https://cloud.google.com/functions/docs/quickstart
# brew cask install google-cloud-sdk
# gcloud components install beta
# gcloud init
#
# Firebase SDK
# https://firebase.google.com/docs/functions/get-started
# npm install -g firebase-tools
# firebase init

if command_exists brew; then
	GDIR="$(brew --prefix)/Caskroom/google-cloud-sdk"
fi

if is_dir "$GDIR"; then
	if test -n "$BASH_VERSION"; then
		. "$GDIR/latest/google-cloud-sdk/path.bash.inc"
		. "$GDIR/latest/google-cloud-sdk/completion.bash.inc"

	elif test -n "$ZSH_VERSION"; then
		. "$GDIR/latest/google-cloud-sdk/path.zsh.inc"
		. "$GDIR/latest/google-cloud-sdk/completion.zsh.inc"
	fi
fi

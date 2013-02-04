if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH="$PATH:/usr/local/git/bin:/Users/bjeavons/.rbenv/versions/1.9.2-p290/lib/ruby/gems/1.9.1/gems/rhc-1.2.7/bin"

eval "$(rbenv init -)"

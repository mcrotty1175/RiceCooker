#!/bin/bash -e
# Updates the working environment (Stolen from theprimeagen)

dry_run="0"
if [ -z "$XDG_CONFIG_HOME" ]; then
    echo "no xdg config hom"
    echo "using ~/.config"
    XDG_CONFIG_HOME=$HOME/.config
fi

if [ -z "$DEV_ENV" ]; then
    echo "env var DEV_ENV needs to be present"
    exit 1
fi


if [[ $1 == "--dry" ]]; then
    dry_run="1"
    echo "performing a dry-run"
fi


update_files() {
    echo "copying over files from: $1"
    pushd $1 &> /dev/null
    (
        configs=`find . -mindepth 1 -maxdepth 1 -type d`
        for c in $configs; do
            directory=${2%/}/${c#./}
            echo "    removing: rm -rf $directory"

            if [[ $dry_run == "0" ]]; then
                rm -rf $directory
            fi

            echo "    copying env: cp $c $2"
            if [[ $dry_run == "0" ]]; then
                cp -r ./$c $2
            fi
        done

    )
    popd &> /dev/null
}

update_files $DEV_ENV/nvim $XDG_CONFIG_HOME


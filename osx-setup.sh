function IRun {
    echo "Setting up $1"
    echo "$2" | bash
    local status=$?
    if [ $status -ne 0 ]
    then
        echo "Error setting up $1; Please proceed manually. The rest of the script may not work."
    else
        echo "Done setting up $1"
    fi
    echo 
}

function YouRun {
    echo "$1"
    read -p "Done? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Great, moving on"
        retval=0
    else
        echo "Ok, but you should do this later; the rest of the setup may fail"
        retval=1
    fi
    echo 
    return "$retval"
}

###################################################
# Optional

# iterm2
YouRun "Download iTerm2 from iterm2.com. Skip if already on iTerm2. Exit after installing."

# solarized
YouRun "
- Download http://ethanschoonover.com/solarized
- From Terminal/iTerm2 settings, import theme solarized dark"

# Karabiner
YouRun "Install Karabiner from https://pqrs.org/osx/karabiner/"
retval=$?
if [ "$retval" == 0 ]
then
    IRun "Karabiner private.xml" "cp files/karabiner-private.xml /Users/hayk/Library/Application Support/Karabiner/private.xml"
fi

# Textmate
YouRun "Install TextMate from http://macromates.com/"

# Firefox
YouRun "Install Firefox"

# Thunderbird
IRun "Thunderbird" "brew cask install thunderbird"

# sl
IRun "sl" "brew install sl"

# inkscape
IRun "Inkscape" "brew update
brew cask install xquartz
brew cask install inkscape"

# languagetool
YouRun "Install languagetool for latex"


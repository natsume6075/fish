if test "$NAME" = "DESKTOP-IVL0EDA"
    set filename (basename (status -f))
    echo "$filename : set local settings for type $NAME"
    source ~/.config/fish/conf.d/local/DESKTOP-IVL0EDA/*
else
    echo "$NAME doesn't have local settings"
end


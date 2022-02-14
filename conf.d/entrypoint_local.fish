set filename (basename (status -f))

if test "$NAME" = "DESKTOP-IVL0EDA"
    echo "$filename : set local settings for type $NAME"
    source ~/.config/fish/conf.d/local/DESKTOP-IVL0EDA/env_var.fish
else if test "$NAME" = "AGL656950"
    echo "$filename : set local settings for type $NAME"
    source ~/.config/fish/conf.d/local/AGL656950/alias.fish
    source ~/.config/fish/conf.d/local/AGL656950/env_var.fish
else
    echo "$NAME doesn't have local settings"
end


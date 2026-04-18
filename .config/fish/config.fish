source /usr/share/cachyos-fish-config/cachyos-config.fish

set DOTFILES_DIR $HOME/.config/dotfiles.git
alias gitdf="git --git-dir=$DOTFILES_DIR --work-tree=$HOME"

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    echo "   o   o"
    echo "                 /^^^^^7"
    echo "   '  '     ,oO))))))))Oo,"
    echo "          ,'))))))))))))))), /{"
    echo "     '  ,'o  ))))))))))))))))={"
    echo "        >    ))))))))))))))))={"
    echo "        `,   ))))))\\ \\)))))))={"
    echo "          ',))))))))\/)))))' \\{"
    echo "            '*O))))))))O*'"
    echo ""
end

function fish_prompt
    set_color normal
    echo -n " ><("
    set_color $fish_color_cwd
    echo -n $PWD
    set_color normal
    echo -n ")º> "
end
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda/bin/conda
    eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/anaconda/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/anaconda/bin" $PATH
    end
end
# <<< conda initialize <<<


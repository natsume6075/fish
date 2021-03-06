if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set -g theme_display_git no
# set -g theme_display_git_dirty no
# set -g theme_display_git_untracked no
# set -g theme_display_git_ahead_verbose yes
# set -g theme_display_git_dirty_verbose yes
# set -g theme_display_git_stashed_verbose yes
# set -g theme_display_git_default_branch yes
# set -g theme_git_default_branches master main
# set -g theme_git_worktree_support yes
# set -g theme_use_abbreviated_branch_name yes
# set -g theme_display_vagrant yes
# set -g theme_display_docker_machine no
# set -g theme_display_k8s_context yes
# set -g theme_display_hg yes
# set -g theme_display_virtualenv no
# set -g theme_display_nix no
# set -g theme_display_ruby no
# set -g theme_display_node yes
# set -g theme_display_user ssh
# set -g theme_display_hostname ssh
# set -g theme_display_vi no
# set -g theme_display_date no
# set -g theme_display_cmd_duration yes
# set -g theme_title_display_process yes
# set -g theme_title_display_path no
# set -g theme_title_display_user yes
# set -g theme_title_use_abbreviated_path no
# set -g theme_date_format "+%a %H:%M"
# set -g theme_date_timezone America/Los_Angeles
# set -g theme_avoid_ambiguous_glyphs yes
# set -g theme_powerline_fonts no
# set -g theme_nerd_fonts yes
# set -g theme_show_exit_status yes
# set -g theme_display_jobs_verbose yes
# set -g default_user your_normal_user
# set -g theme_color_scheme nord
set -g fish_prompt_pwd_dir_length 4
# set -g theme_project_dir_length 1
# set -g theme_newline_cursor yes
# set -g theme_newline_prompt '$ '


# 入れ子を避けつつ、shell 起動時に tmux と vim を起動する。
if test "$VSCODE_PID" = ""
    if test "$TMUX" = ""
        # tmux に入っていない => tmux 起動して main セッションに入る、なければ作る。
        tmux a -t main
        set tmux_ret $status
        if test $tmux_ret = 1
            tmux new-session -s main
        end
    else
        if test "$NVIM_LISTEN_ADDRESS" = ""
            # vim の外で shell が起動した && tmux に入っている => vim 起動
            vim
        end
    end
else
    if test "$NVIM_LISTEN_ADDRESS" = ""
            vim -c terminal
    end
end

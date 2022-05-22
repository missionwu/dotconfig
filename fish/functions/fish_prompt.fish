function fish_prompt --description 'Write out the prompt'
    set -l cwd (basename (prompt_pwd))
    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix '$'
    if fish_is_root_user
        set suffix '#'
    end

    printf '%s' \
      (set_color normal) '[' \
      (set_color cyan) $cwd \
      (set_color yellow) (fish_git_prompt) \
      (set_color normal) ']' $suffix ' '
end

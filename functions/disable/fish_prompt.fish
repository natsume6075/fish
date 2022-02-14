funcion fish_prompt --description 'Write out the prompt'
    printf 'hoge@%s%s> ' (prompt_hostname) (prompt_pwd)
end

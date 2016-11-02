insert_line() {
    printf "$1\n" >> "$2"
}

insert_file() {
    cat "$1" >> "$2"
}

insert_file_comment_out() {
    printf "%s\n" "$(cat "$1" | sed -E 's/^([^#])(.+)$/# \1\2/g')" >> "$2"
}

insert_header() {
    local title="$(printf "$1" | tr '[:lower:]' '[:upper:]')"

    insert_line "# ######################################################################" "$2"
    insert_line "# # $title $(insert_space "$title") #" "$2"
    insert_line "# ######################################################################" "$2"
}

insert_space() {
    total=65
    occupied=$(printf "$1" | wc -c)
    difference=$(( $total - $occupied ))
    printf '%0.s ' $(seq 1 $difference)
}

print_error() {
    # Print output in red
    printf "\e[0;31m [✖] $1 $2\e[0m\n"
}

print_info() {
    # Print output in purple
    printf "\n\e[0;35m $1\e[0m\n\n"
}

print_result() {
    [ $1 -eq 0 ] \
        && print_success "$2" \
        || print_error "$2"
}

print_success() {
    # Print output in green
    printf "\e[0;32m [✔] $1\e[0m\n"
}

add_line_to_file() {
    execute "printf '$1\n' >> $2"
}

execute() {
    sudo bash -c "$1"
}

install_package() {
    sudo apt-get install --assume-yes --force-yes --quiet "$1"
}

update() {
    # Resynchronize the package index files from their sources
    execute "sudo apt-get update -qqy" "update"
    #                              │└─ assume "yes" as the
    #                              │   answer to all prompts
    #                              └─ suppress output
}

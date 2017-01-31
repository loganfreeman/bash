# extracts all information from output of 'uname -a' command
parseUname() {
    local uname=$1

    KERNEL=$(echo "$uname" | awk '{print $3}' | cut -d '-' -f 1)
    ARCH=$(echo "$uname" | awk '{print $(NF-1)}')

    OS=""
    echo "$uname" | grep -q -i 'deb' && OS="debian"
    echo "$uname" | grep -q -i 'ubuntu' && OS="ubuntu"
    echo "$uname" | grep -q -i '\.el' && OS="redhat"

    # 'uname -a' output doesn't contain distribution number (at least not in case of all distros)
    #DISTRO=""
}

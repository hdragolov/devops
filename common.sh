#/bin/bash
# Common stuff

function get_dist() {
    dist=''

    if [ -f /etc/redhat-release ]; then
        dist='rhel'
    elif [ -f /etc/debian_version ]; then
        dist='debian'
    fi

    echo "${dist}"
}

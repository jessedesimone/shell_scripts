#!/bin/bash
: 'general error message for driver script with options'

gen_error_msg="\

    Usage: ./driver.sh [-a] [-b] [-c] [-o <path/to/outdir>| [-h]
    Required arguments (at least 1 of):
    -a      <option description>
    -b      <option description>
    -c      <option description>
    -d      specify output directory

    Option arguments:
    -h      help

    "
    while getopts ":habco:" opt; do
        case ${opt} in
                h|\?) #help option
                    echo "$gen_error_msg"
                    exit 1
                    ;;
                a) #option a
                    aflag=1
                    ;;
                b) #option b
                    bflag=1
                    ;;
                c) #option c
                    cflag=1
                    ;;
                o) #output
                    oflag=${OPTARG}
                    ;;
        esac
    done
    if [ $OPTIND -eq 1 ]; then
        echo "++ driver.sh requires at least 1 argument argument"
        echo "$gen_error_msg"
        exit 1
    fi
    if [ ! "$oflag" ]; then 
        echo "ERROR: [-o <string>] must be provided"
        echo "$gen_error_msg" >&2
        exit 1
    fi
    shift $((OPTIND -1))

#=======handle options========
if [ "$aflag" ]; then
    source <path/to/script>
fi


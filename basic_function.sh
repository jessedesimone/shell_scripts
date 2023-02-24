#!/bin/bash
countdown () {
    echo "Ready...going in"
    for i in {5..1}
    do
        sleep 1
        echo $i
    done
    sleep 1
    echo "GO!"
}
countdown
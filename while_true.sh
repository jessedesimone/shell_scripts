while true; do
    read -p "Type machine and press enter: " -a array
    for choice in "${array[@]}"; do
        case "$choice" in
            [Tupac]* ) echo -e "$choice\n";;
            [QueenLatifah]* ) echo -e "$choice\n";;
            [Shakira]* ) echo -e "$choice\n";;
            [Ee]* ) echo "exited by user"; exit;;
            * ) echo "Are you kidding me???";;
        esac
    done
done
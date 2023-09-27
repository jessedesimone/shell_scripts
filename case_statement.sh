echo "Artists: Tupac, ZacBrown, Kendrick"
read -p "Type favorite artist and press enter or 'E' to exit: " key
echo "++connecting to $key"

case $key in
    Tupac | tupac ) echo "Favorite artist is $key";;
    ZacBrown | zac ) echo "Favorite artist is $key";;
    Kendrick | kendrick* ) echo "Favorite artist is $key";;
    [Ee]* ) echo "exited by user"; exit;;
esac
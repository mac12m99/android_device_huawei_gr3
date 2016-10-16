#used to add device to CM's lunch
add_lunch_combo cm_gr3-eng
add_lunch_combo cm_gr3-userdebug

function gr3()
{
    lunch cm_gr3-userdebug
    if [ $? -eq 0 ]; then
        time mka -j4 bacon
    else
        echo "No such item in brunch menu. Try 'breakfast'"
        return 1
    fi
    return $?
}

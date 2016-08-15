add_lunch_combo omni_HWTAGL6753-userdebug

#Compile twrp by typing gr3
function gr3()
{
    lunch omni_HWTAGL6753-userdebug
    if [ $? -eq 0 ]; then
        time mka -j10 recoveryimage
    else
        echo "No such item in brunch menu. Try 'breakfast'"
        return 1
    fi
    return $?
}

mac=$(bluetoothctl info | head -1 | awk '{print $2}')

if [[ "$mac" == "41:42:9C:45:44:F3" ]];
then
  echo "$(upower -i /org/freedesktop/UPower/devices/headphones_dev_41_42_9C_45_44_F3 | grep percentage | awk '{print $2}')"
elif [[ "$mac" == "FC:58:FA:DF:F7:C8" ]];
then
  echo "$(upower -i  /org/freedesktop/UPower/devices/headset_dev_FC_58_FA_DF_F7_C8 | grep percentage | awk '{print $2}')"
else
  echo ""
fi

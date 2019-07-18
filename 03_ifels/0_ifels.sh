platform=$1
platformSQ="sq"
platformWX="wx"
echo $platform, $platformSQ, $platformWX
if [ "$platform" == "$platformSQ" ]
then
  echo "手Q"
elif [ "$platform" == "$platformWX" ]
then
  echo "微信"
else
  echo "未知的平台"
  exit 0
fi

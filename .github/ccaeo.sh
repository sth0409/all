home=`pwd`
curl --version
echo $(date '+%Y年%m月%d日·%H点%M分%S秒.%N毫秒')
eval "`curl -s 'https://api.github.com/repos/changfengoss/pub/commits' | grep -m 1 'html_url' | sed 's/.*"html_url": /html_url=/g'`"
eval "`curl -s "${html_url//,}" | sed -n 's|^      <a href="#diff-.*">|href="https://raw.githubusercontent.com/changfengoss/pub/main/|p' | sed 's|</a>|"|g'`"
case "$href" in
*.txt) curl -so $home/v "$href" ;;
*.yaml) curl -so $home/c "$href" ;;
*) echo "$href" ;;
esac
eval "`curl -s 'https://api.github.com/repos/pojiezhiyuanjun/freev2/commits' | grep -m 1 'html_url' | sed 's/.*"html_url": /html_url=/g'`"
eval "`curl -s "${html_url//,}" | sed -n 's|^      <a href="#diff-.*">|href="https://raw.githubusercontent.com/pojiezhiyuanjun/freev2/master/|p' | sed 's|</a>|"|g'`"
case "$href" in
*.txt) curl -so $home/v2 "$href" ;;
*.yml) curl -so $home/c2 "$href" ;;
*.zip) curl -so $home/vc.zip "$href"
unzip -p $home/vc.zip '*txt' >$home/v2
unzip -p $home/vc.zip '*.yml' >$home/c2
rm -rf $home/vc.zip ;;
*) echo "$href" ;;
esac
eval "`curl -s 'https://api.github.com/repos/zyfxz/V2Ray/commits' | grep -m 1 'html_url' | sed 's/.*"html_url": /html_url=/g'`"
eval "`curl -s "${html_url//,}" | sed -n 's|^      <a href="#diff-.*">|href="https://raw.githubusercontent.com/zyfxz/V2Ray/main/|p' | sed 's|</a>|"|g'`"
curl -so $home/v3 "$href"
eval "`curl -s 'https://api.github.com/repos/zyfxz/clash/commits' | grep -m 1 'html_url' | sed 's/.*"html_url": /html_url=/g'`"
eval "`curl -s "${html_url//,}" | sed -n 's|^      <a href="#diff-.*">|href="https://raw.githubusercontent.com/zyfxz/clash/main/|p' | sed 's|</a>|"|g'`"
curl -so $home/c3 "$href"
eval "`curl -s 'https://api.github.com/repos/FMYC2015/V2ray/commits' | grep -m 1 'html_url' | sed 's/.*"html_url": /html_url=/g'`"
eval "`curl -s "${html_url//,}" | sed -n 's|^      <a href="#diff-.*">|href="https://raw.githubusercontent.com/FMYC2015/V2ray/main/|p' | sed 's|</a>|"|g'`"
curl -so $home/v4 "$href"
eval "`curl -s 'https://api.github.com/repos/FMYC2015/Clash/commits' | grep -m 1 'html_url' | sed 's/.*"html_url": /html_url=/g'`"
eval "`curl -s "${html_url//,}" | sed -n 's|^      <a href="#diff-.*">|href="https://raw.githubusercontent.com/FMYC2015/Clash/main/|p' | sed 's|</a>|"|g'`"
curl -so $home/c4 "$href"
curl -so $home/v5 'https://raw.githubusercontent.com/ssrsub/ssr/master/V2Ray'
curl -so $home/c5 'https://raw.githubusercontent.com/ssrsub/ssr/master/Clash.yml'
curl -so $home/v6 'https://gitee.com/chenx58/clash/raw/V2R/V2R'
eval "`curl -s 'https://api.github.com/repos/bhqz/bhqz/commits' | grep -m 1 'html_url' | sed 's/.*"html_url": /html_url=/g'`"
eval "`curl -s "${html_url//,}" | sed -n 's|^      <a href="#diff-.*">|href="https://raw.githubusercontent.com/bhqz/bhqz/main/|p' | sed 's|</a>|"|g'`"
case "$href" in
*.txt) curl -so $home/v7 "$href" ;;
*.yaml) curl -so $home/c6 "$href" ;;
*) echo "$href" ;;
esac
sed -i "/^|20/c|$(date '+%Y年%m月%d日·%H点%M分%S秒')|" $home/README.md
sed -i "/^20/c$(date '+%Y年%m月%d日·%H点%M分%S秒' -d '+1 hour')" $home/README.md
echo $(date '+%Y年%m月%d日·%H点%M分%S秒.%N毫秒')

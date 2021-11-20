
echo "Start"
function _CURL() {
unset url
echo "Connection Link: $@"
eval `curl -s "https://api.github.com/repos/$@/commits" | sed -n 's/.*"url": /url=/p' | sed -n '3p'`
eval `curl -s "${url/,}" | sed -n 's/.*"raw_url": /raw_url=/p'`
}
function CURL() {
[[ -z $raw_url ]] && return $$
echo "Download link: $raw_url"
curl -s -L "${raw_url/,}" -o $1
unset raw_url
}
_CURL 'changfengoss/pub'
if [[ "$raw_url" = *.txt, ]]
then CURL v
elif [[ "$raw_url" = *.y*ml, ]]
then CURL c
else echo "Failed Link: $raw_url"
fi
_CURL 'pojiezhiyuanjun/freev2'
if [[ "$raw_url" = *.y*ml, ]]
then CURL c2
else echo "Failed Link: $raw_url"
fi
sed -i "/^|20/c|$(date '+%Y-%m-%d %H:%M:%S.%N')|" ./README.md
echo "End"

mkdir -p ./secrets && rm -rf ./secrets/*
printenv | sed 's;=.*;;' | uniq | grep SECRET_ | while read line; do eval echo \$$line > ./secrets/${line/SECRET_/}; done
httpd -f -p 8000 -h ./secrets
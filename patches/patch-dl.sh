curl https://gitlab.alpinelinux.org/alpine/aports/-/refs/master/logs_tree/main%2Fbusybox?format=json\&offset=0 | jq -r .[].file_name | xargs -I {} wget https://gitlab.alpinelinux.org/alpine/aports/-/raw/master/main/busybox/{}
cd ..
ls ./patches/*.patch | sudo xargs -I {} git apply {}

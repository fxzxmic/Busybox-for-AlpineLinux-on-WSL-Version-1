for file in $(curl https://gitlab.alpinelinux.org/alpine/aports/-/refs/master/logs_tree/main%2Fbusybox?format=json\&offset=20 | jq -r .[].file_name); do
	if [ "${file##*.}" == "patch" -a ! -e "$file" ]; then
		wget https://gitlab.alpinelinux.org/alpine/aports/-/raw/master/main/busybox/$file
	fi
done
cd ..
ls ./patches/*.patch | sudo xargs -I {} git apply {}

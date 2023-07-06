for file in $(curl https://gitlab.alpinelinux.org/alpine/aports/-/refs/3.17-stable/logs_tree/main%2Fbusybox?format=json\&offset=0 | jq -r .[].file_name); do
	if [ "${file##*.}" == "patch" -a ! -e "$file" ]; then
		wget https://gitlab.alpinelinux.org/alpine/aports/-/raw/3.17-stable/main/busybox/$file
	fi
done
cd ..
ls ./patches/*.patch | sudo xargs -I {} git apply {}

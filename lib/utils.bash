#!/usr/bin/env bash

set -euo pipefail

TOOL_NAME="zeus-cli"
TOOL_TEST="zeus-cli -v"

fail() {
	echo -e "asdf-$TOOL_NAME: $*"
	exit 1
}

sort_versions() {
	sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
		LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_all_versions() {
	npm view @zeppos/zeus-cli versions --json | jq -r '.[]'
}

download_release() {
	local version="$1"
	npm install -g @zeppos/zeus-cli@$version
}

install_version() {
	local version="$1"

	(
		if command -v zeus >/dev/null 2>&1; then
			# 提取 zeus 的版本号
			current_version=$(zeus -v | grep -oP '\d+\.\d+\.\d+')

			# 比较当前版本和预期版本
			if [ "$current_version" != "$version" ]; then
				npm install @zeppos/zeus-cli@version
			fi
		fi

		echo "$TOOL_NAME $version installation was successful!"
	) || (
		fail "An error occurred while installing $TOOL_NAME $version."
	)
}

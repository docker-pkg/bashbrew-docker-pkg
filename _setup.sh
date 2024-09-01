#!/usr/bin/env bash

_dir="$(dirname "$BASH_SOURCE")"
: "${dir:=$_dir}"
dir="$(readlink -ve "$dir")"
case "${BASHBREW_NAMESPACE:-}" in
	'' | docker-pkg)
		export BASHBREW_LIBRARY="$dir/library" BASHBREW_NAMESPACE='docker-pkg'
		;;
	*)
		export BASHBREW_LIBRARY="$dir/$BASHBREW_NAMESPACE"
		;;
esac

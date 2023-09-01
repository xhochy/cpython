#!/bin/bash

if [[ "${target_platform}" == "${build_platform}" || "${CROSSCOMPILING_EMULATOR:-}" != "" ]]; then
  if [[ "$1" == "./"* ]]; then
    exec $@
  else
    export ${@:1:$#-2}
    exec ${@: -2}
  fi
fi

#!/bin/bash
make_fake_dir () {

pushd "$WORKSPACE"

if [ -d "$WORKSPACE/core" ]; then
  mkdir "$WORKSPACE/core"
fi
popd
}
exit

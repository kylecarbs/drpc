#!/usr/bin/env bash

set -e

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

(cd "${SCRIPTDIR}/..";                     go test ./... -count=1)
(cd "${SCRIPTDIR}/../internal/grpccompat"; go test ./... -count=1)

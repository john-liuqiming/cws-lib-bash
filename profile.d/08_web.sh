export CURL_VERBOSE_OPTS="--progress-bar --show-error"
export CURL_DOWNLOAD_OPTS="--location --compressed --insecure"
export CURL_RETRY_OPTS="--retry 5 --retry-delay 1"

export WGET_VERBOSE_OPTS="--progress=dot:giga"
export WGET_DOWNLOAD_OPTS="--no-check-certificate"

function curl_download() {
    local curl_opts=$@
    if [ -z "${curl_opts}" ]; then
        curl_opts=-O
    fi
    curl ${CURL_VERBOSE_OPTS} ${CURL_DOWNLOAD_OPTS} ${CURL_RETRY_OPTS} ${curl_opts}
}

function wget_download() {
    wget ${WGET_VERBOSE_OPTS} ${WGET_DOWNLOAD_OPTS}
}

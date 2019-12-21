# dropbox-ci

Store artifacts from CI jobs on dropbox

## Usage

Authenticate your account

```sh
docker run -it --rm -v $HOME/.config/dbxcli:/root/.config/dbxcli kairyou/docker-dbxcli du
```

Copy personal access key from \$HOME/.config/dbxcli/auth.json and store it.

Now you can use this image in CI jobs.

```
docker run -t --rm \
    -e DROPBOX_KEY={{ Your personal dropbox key }} \
    -v $PWD:/backup # To specify where to download / from to upload
    zskpoznan/dropbox-ci:latest \
    get /tmp/file.txt file.txt # dbxcli command
```

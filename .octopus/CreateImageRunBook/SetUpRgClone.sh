export RGCLONE_API_ENDPOINT=$(get_octopusvariable "RGCLONE_API_ENDPOINT")
export RGCLONE_ACCESS_TOKEN=$(get_octopusvariable "RGCLONE_ACCESS_TOKEN")
RGCLONE_DOWNLOAD_URL="$RGCLONE_API_ENDPOINT"
RGCLONE_DOWNLOAD_URL+="cloning-api/download/cli/linux-amd64"
echo "Downloading and unzipping rgclone from $RGCLONE_DOWNLOAD_URL"
curl $RGCLONE_DOWNLOAD_URL | tar xz
echo "rgclone version is:"
./rgclone version
# echo "Available rgclone images are:"
# ./rgclone get di
# echo "Creating new Widget data image:"
# ./rgclone create di -f ./Widget.yaml
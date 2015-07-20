debug 'Set $GOPATH'
export GOPATH="$WERCKER_SOURCE_DIR"

debug 'Display $GOPATH'
goapp env GOPATH

debug 'Starting deployment'
(cd `find src/$WERCKER_GIT_DOMAIN/$WERCKER_GIT_OWNER/$WERCKER_GIT_REPOSITORY -maxdepth 4 -name app.yaml | head -n1 |xargs dirname` && appcfg.py update `grep "^application:" -l -null *.yaml` --oauth2_refresh_token="$WERCKER_GO_APPENGINE_DEPLOY_TOKEN")

success 'Finished'

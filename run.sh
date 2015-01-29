echo "$WERCKER_GO_APPENGINE_DEPLOY_PASSWORD" > "$WERCKER_STEP_TEMP/password"

debug 'Set $GOPATH'
export GOPATH="$WERCKER_SOURCE_DIR"

debug 'Display $GOPATH'
goapp env GOPATH

debug 'Starting deployment'
(cd `find src/$WERCKER_GIT_DOMAIN/$WERCKER_GIT_OWNER/$WERCKER_GIT_REPOSITORY -maxdepth 4 -name app.yaml | head -n1` && appcfg.py update `grep "^application:" -l -null *.yaml` --email="$WERCKER_GO_APPENGINE_DEPLOY_EMAIL" --passin < "$WERCKER_STEP_TEMP/password")

success 'Finished'

echo "$WERCKER_GO_APPENGINE_DEPLOY_PASSWORD" > "$WERCKER_STEP_TEMP/password"

cd $WERCKER_SOURCE_DIR

debug 'Starting deployment'
appcfg.py update `find . -maxdepth 4 -name app.yaml | head -n1` --email="$WERCKER_GO_APPENGINE_DEPLOY_EMAIL" --passin < "$WERCKER_STEP_TEMP/password"

success 'Finished'

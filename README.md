# Go App Engine Deploy

A step that deploys Go applications to Google App Engine. This step depends on `michilu/setup-go-workspace` to setup the Go workspace first!

## Options

### required

* `email` - The email address of the Google account to use for deployment.
* `password` - The password of the Google account to use for deployment.

## Example

    deploy:
      steps:
      - setup-go-workspace
      - michilu/go-appengine-deploy:
          email:    $APP_ENGINE_EMAIL
          password: $APP_ENGINE_PASSWORD

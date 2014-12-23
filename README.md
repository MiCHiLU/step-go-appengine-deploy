# Go App Engine Deploy

A step that deploys Go applications to Google App Engine. This step depends on `michilu/box-goapp`.

## Options

### required

* `email` - The email address of the Google account to use for deployment.
* `password` - The password of the Google account to use for deployment.

## Example

```
box: michilu/goapp
deploy:
  steps:
  - michilu/go-appengine-deploy:
      email:    $APP_ENGINE_EMAIL
      password: $APP_ENGINE_PASSWORD
```

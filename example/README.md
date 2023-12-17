# GoogleMapsApi example app

Demonstrate how to use the google maps api.

## Installation
### Set up env variables (GoogleMapsApi key)

- `Flutter`:
    Create a `.env` file at the root of the project and paste the following content:
    ```
    apiKey = YOUR_API_KEY
    ```
    > This key needs to be enabled for _web_

- `Android`:
    Create a `android/app/src/main/res/values/keys.xml` file and paste the following content:
    ```
    <?xml version="1.0" encoding="utf-8"?>
    <resources>
        <string name="google_maps_key" translatable="false"    templateMergeStrategy="preserve">
            YOUR_API_KEY
        </string>
    </resources>
    ```
    > This key needs to be enabled for _android_

- `IOS`:
    Create a `ios/Runner/APIKey.plist` file and paste the following content:
    ```
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>apiKey</key>
        <string>YOUR_API_KEY</string>
    </dict>
    </plist>
    ```
    > This key needs to be enabled for _IOS_

- `WEB`:
    Be serious, nobody uses Flutter to make web apps...

If you got lost somewhere, follow [this guide](https://medium.com/@ykaito21/flutter-from-zero-to-one-how-to-ignore-google-map-api-key-from-source-control-18e119ff5a47) made by [YK21](https://medium.com/@ykaito21)

Note that you can use the same key for the 3 platforms, but Google recommands using separate keys.

## Run
Launch the app using
```
flutter run
``` 
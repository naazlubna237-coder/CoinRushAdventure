# Coin Rush Adventure — Android / Google Play project

This project wraps the supplied `Coin Rush Adventure.html` as a local Android WebView app. The game HTML is copied unchanged into `app/src/main/assets/index.html`; the Android layer only provides the native container, fullscreen behavior, back-button pause behavior, and Play-ready packaging.

## Open in Android Studio

1. Open this folder in Android Studio.
2. Let Gradle sync.
3. Run the `app` configuration on a phone/emulator to test.

## Build a release AAB

For a real Google Play release, create your own upload keystore and keep it private. Do not put the keystore or passwords in Git.

Set these Gradle properties:

- `RELEASE_STORE_FILE` — absolute path to your `.jks` file
- `RELEASE_STORE_PASSWORD` — keystore password
- `RELEASE_KEY_ALIAS` — upload key alias
- `RELEASE_KEY_PASSWORD` — upload key password

Then build:

`./gradlew bundleRelease`

The bundle will be at:

`app/build/outputs/bundle/release/app-release.aab`

Android Studio can also create the signed bundle through **Build → Generate Signed Bundle / APK → Android App Bundle**.

## Important

The included game uses browser APIs already present in the original HTML, including Canvas, Web Audio, localStorage, pointer events and vibration. No remote game assets or network access are required by the wrapper.

Before publishing, test the game on several Android screen sizes and complete Play Console requirements such as app content declarations, privacy/data-safety declarations, store listing, screenshots, and your own signing/upload-key setup.

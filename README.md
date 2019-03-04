# cordova-plugin-safearea

A cordova plugin to get the size of iPhone X safe area.

## Installation

```
cordova plugin add cordova-plugin-safearea
```

## Supported Platforms

- iOS

## Usage

```js
document.addEventListener("deviceready", onDeviceReady, false);

function onDeviceReady() {
  window.plugins.safearea.get(successCallback, errorCallback);
}

function successCallback(result) {
  console.log(result);
}
```

The plugin returns a JSON object with the screen sizes.

## Android Platform Quirks

Return values:

* `top` &lt;Number&gt; − safe area top in pixels
* `bottom` &lt;Number&gt; − safe area bottom in pixels

## LICENSE

**cordova-plugin-safearea** is licensed under the MIT Open Source license. For more information, see the LICENSE file in this repository.

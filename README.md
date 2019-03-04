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

* `width` &lt;Number&gt; − screen width in pixels
* `height` &lt;Number&gt; − screen height in pixels
* `xdpi` &lt;Number&gt; − physical pixels per inch of the screen in the X dimension
* `ydpi` &lt;Number&gt; − physical pixels per inch of the screen in the Y dimension
* `diameter` &lt;Number&gt; − screen diameter in inches (rounded to two decimals)
* `densityValue` &lt;Number&gt; − density point (`0.75`, `1.0`, `1.5`, `2.0`, `3.0`, `4.0`)
* `densityBucket` &lt;String&gt; − density bucket (`ldpi`, `mdpi`, `hdpi`, `xhdpi`, `xxhdpi`, `xxxhdpi`)

## LICENSE

**cordova-plugin-safearea** is licensed under the MIT Open Source license. For more information, see the LICENSE file in this repository.

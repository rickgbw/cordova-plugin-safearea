/* globals cordova, module */

module.exports = {
  get: function (successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, 'SafeArea', 'get', []);
  }
};

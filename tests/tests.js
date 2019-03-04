exports.defineAutoTests = function() {
  describe('Screen Size Information (window.plugins.safearea)', function () {
    it('should exist', function() {
      expect(window.plugins.safearea).toBeDefined();
    });

    it('should contain get that is a function', function() {
      expect(window.plugins.safearea.get).toBeDefined();
      expect(typeof window.plugins.safearea.get).toBe('function');
    });

  });
};

exports.defineManualTests = function(contentEl, createActionButton) {
  var logMessage = function (message, color) {
    var log = document.getElementById('info');
    var logLine = document.createElement('div');
    if (color) {
      logLine.style.color = color;
    }
    logLine.innerHTML = message;
    log.appendChild(logLine);
  };

  var clearLog = function () {
    var log = document.getElementById('info');
    log.innerHTML = '';
  };

  var device_tests = '<h3>Press Dump safearea button to get SIM information</h3>' +
    '<div id="dump_safearea"></div>' +
    'Expected result: Status box will get updated with safearea info.';

  contentEl.innerHTML = '<div id="info"></div>' + device_tests;

  createActionButton('Dump safearea', function() {
    clearLog();
    window.plugins.safearea.get(
      function(result) {
        logMessage(JSON.stringify(result));
      },
      function(error) {
        logMessage(JSON.stringify(error));
      }
    );
  }, 'dump_safearea');
};

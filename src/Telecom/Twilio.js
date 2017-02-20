'use strict';

var twilio = require('twilio');

exports.connect = function(creds) {
  return function() {
    return new twilio.RestClient(creds.accountSid, creds.authToken);
  };
};

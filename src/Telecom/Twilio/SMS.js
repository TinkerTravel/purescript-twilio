'use strict';

var Control_Monad_Aff = require('../Control.Monad.Aff');

exports.messageAckStatus = function(a) { return a.status; };

exports.sendMessage = function(client) {
  return function(message) {
    return function(onSuccess, onError) {
      client.messages.post(message, function(err, res) {
        if (err !== null) {
          onError(err);
          return;
        }
        onSuccess(res);
      });
    };
  };
};

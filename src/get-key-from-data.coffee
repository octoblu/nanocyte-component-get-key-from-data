_ = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class GetKeyFromData extends ReturnValue
  onEnvelope: (envelope) =>
    {message, config} = envelope
    asKey = config.key
    asKey = config.as unless _.isEmpty config.as

    newMessage = {}
    value = _.get message.data, config.key
    _.set newMessage, asKey, value
    return newMessage

module.exports = GetKeyFromData

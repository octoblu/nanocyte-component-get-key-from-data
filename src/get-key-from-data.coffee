_ = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class GetKeyFromData extends ReturnValue
  onEnvelope: (envelope) =>
    {message, config} = envelope

    newMessage = {}
    value = _.get message.data, config.key
    _.set newMessage, config.key, value
    return newMessage

module.exports = GetKeyFromData

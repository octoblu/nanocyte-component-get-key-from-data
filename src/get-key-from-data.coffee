ReturnValue = require 'nanocyte-component-return-value'

class GetKeyFromData extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = GetKeyFromData

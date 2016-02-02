ReturnValue = require 'nanocyte-component-return-value'
GetKeyFromData = require '../src/get-key-from-data'

describe 'GetKeyFromData', ->
  beforeEach ->
    @sut = new GetKeyFromData

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      beforeEach ->
        envelope =
          message:
            data:
              british: 'it-up-a-bit'
          config:
            key: 'british'

        @result = @sut.onEnvelope envelope

      it 'should return key from data', ->
        expect(@result).to.deep.equal british: 'it-up-a-bit'

    describe 'when called with another envelope', ->
      beforeEach ->
        envelope =
          message:
            data:
              posh: 'accent'
          config:
            key: 'posh'

        @result = @sut.onEnvelope envelope

      it 'should return key from data', ->
        expect(@result).to.deep.equal posh: 'accent'

    describe 'when called with an envelope that has an "as" key', ->
      beforeEach ->
        envelope =
          message:
            data:
              british: 'it-up-a-bit'
          config:
            key: 'british'
            as: 'terrorists'

        @result = @sut.onEnvelope envelope

      it 'should return key from data', ->
        expect(@result).to.deep.equal terrorists: 'it-up-a-bit'

    describe 'when called with an envelope that has an empty "as" key', ->
      beforeEach ->
        envelope =
          message:
            data:
              british: 'it-up-a-bit'
          config:
            key: 'british'
            as: ''

        @result = @sut.onEnvelope envelope

      it 'should return key from data', ->
        expect(@result).to.deep.equal british: 'it-up-a-bit'

ReturnValue = require 'nanocyte-component-return-value'
GetKeyFromData = require '../src/get-key-from-data'

describe 'GetKeyFromData', ->
  beforeEach ->
    @sut = new GetKeyFromData

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'

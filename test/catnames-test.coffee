Helper = require 'hubot-test-helper'
sinon = require 'sinon'
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/catnames.coffee')

describe 'catnames', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'get a random name', ->
    @room.user.say('alice', '@hubot catname').then =>
      expect(@room.messages).to.be.a('array')

# Description
#   Hubot suggest popular cat names
#
# Configuration:
#   None.
#
# Commands:
#   hubot catname - get a random cat name.
#
# Author:
#   hashashin

catNames = require('cat-names')

module.exports = (robot) ->

  robot.respond /catname/i, (msg) ->
    msg.send catNames.random()

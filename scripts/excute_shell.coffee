# Description:
#   slackからシェルを実行する

module.exports = (robot) ->
  robot.hear /^sh: (.*)/i, (msg) ->
      @exec = require('child_process').exec
      command = msg.match[1]
      @exec command, (error, stdout, stderr) ->
        msg.send(error)  if error?
        msg.send(stdout) if stdout?
        msg.send(stderr) if stderr?

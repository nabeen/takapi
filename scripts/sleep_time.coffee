cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 2 * * 1-5', () =>
    robot.send {room: "#general"}, "もう寝る時間だよ！あんまり夜更かししちゃダーメ！ﾈﾑﾈﾑ"
  , null, true, "Asia/Tokyo"

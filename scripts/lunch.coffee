cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 13 * * 1-5', () =>
    robot.send {room: "#general"}, "お弁当の時間だよ！お腹空いたぁ！ﾍﾟｺﾍﾟｺ"
  , null, true, "Asia/Tokyo"

# Description:
#   定期で投げるメッセージ

cronJob = require('cron').CronJob

module.exports = (robot) ->

  # 特定のチャンネルへ送信するメソッド(定期実行時に呼ばれる)　
  send = (channel, msg) ->
    robot.send {room: channel}, msg

  # 平日のメッセージ
  new cronJob('0 0 2 * * 1-5', () ->
    send '#general', "@here もう寝る時間だよ！夜更かししちゃダーメ！ｽﾔｽﾔ"
  ).start()

  new cronJob('0 30 8 * * 1-5', () ->
    send '#general', "@here もう起きた？そろそろ起きなきゃ遅刻しちゃうよ！ﾊﾞﾀﾊﾞﾀ"
  ).start()

  new cronJob('0 0 13 * * 1-5', () ->
    send '#general', "@here ランチの時間だよ！お腹すいたぁ！ﾍﾟｺﾍﾟｺ"
  ).start()

  new cronJob('0 30 19 * * 1-5', () ->
    send '#general', "@here まだ帰らないの？どうせ残業代出ないよ？ﾌﾟﾝﾌﾟﾝ"
  ).start()

  # 休日のメッセージ
  new cronJob('0 30 11 * * 0,6', () ->
    send '#general', "@here もう起きた？休みだからって寝過ぎちゃダメだよ！ﾌﾟﾝﾌﾟﾝ"
  ).start()

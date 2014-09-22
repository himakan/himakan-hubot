# Description
#   <description of the scripts functionality>
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot <trigger> - <what the respond trigger does>
#   <trigger> - <what the hear trigger does>
#
# URLS:
#   GET /path?param=<val> - <what the request does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   <github username of the original script author>

module.exports = (robot) ->

  robot.hear /(かえ|帰)(る|ろ)/, (msg) ->
    delay(msg, msg.random ["おつお:-h:", "おつー:-h:", "おつかれ〜:-h:", "お疲れさまでした:-h:", "ばいお :-h:", ":-h:"])

  robot.hear /(おはお|ohao)/, (msg) ->
    delay(msg, msg.random ["おはお", "おはー"])

  robot.hear /ﾍﾟﾛｫ/, (msg) ->
    delay(msg, msg.random [":p:"])

  robot.hear /おつお/, (msg) ->
    delay(msg, msg.random [":-h:"])

  robot.hear /(ぬるぽ|ヌルポ|NullPointerException)/i, (msg) ->
    delay(msg, "ｶﾞｯ")

  robot.hear /((ネム|ねむ|眠)い|nemii)/i, (msg) ->
    delay(msg, msg.random ["おきて", "おきろ！","出たｗｗｗ","おやお","http://livedoor.blogimg.jp/jigokuno_misawa/imgs/4/0/403d15ec.gif"])

  robot.hear /いい(？|\?)/i, (msg) ->
    delay(msg, msg.random ["ダメよーダメダメ"])

  delay = (msg, text) ->
    time = Math.random() * 2000 + 3000
    setTimeout (-> msg.send text), time


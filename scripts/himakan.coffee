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
    msg.reply msg.random ["おつお:-h:", "おつー:-h:", "おつかれ〜:-h:", "お疲れさまでした:-h:", "ばいお :-h:", ":-h:"]

  robot.hear /おつお/, (msg) ->
    msg.reply msg.random [":-h:"]

  robot.hear /(ぬるぽ|ヌルポ|NullPointerException)/i, (msg) ->
    msg.reply "ｶﾞｯ"

  robot.hear /((ネム|ねむ|眠)い|nemii)/i, (msg) ->
    msg.reply msg.random ["おきて", "おきろ！","出たｗｗｗ","おやお"]


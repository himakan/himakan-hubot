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

# リプライの頻度 1/3
REPLY_FREQ = 3

# リプライのディレイ 2秒〜5秒
REPLY_DELAY_MIN = 2000
REPLY_DELAY_MAX = 5000

module.exports = (robot) ->

  robot.hear /^(かえ|帰)(る|ろ)/, (msg) ->
    freq(msg, msg.random ["おつお:-h:", "おつー:-h:", "おつかれ〜:-h:", "お疲れさまでした:-h:", "ばいお :-h:", ":-h:"])

  robot.hear /^(おはお?|ohao?|o-h-a|オハオ?)/, (msg) ->
    freq(msg, msg.random ["おはお", "おはー"])

  robot.hear /ﾍﾟﾛｫ/, (msg) ->
    freq(msg, msg.random [":p:"])

  robot.hear /おつお/, (msg) ->
    freq(msg, msg.random [":-h:"])

  robot.hear /(ぬるぽ|ヌルポ|NullPointerException)/i, (msg) ->
    freq(msg, "ｶﾞｯ")

  robot.hear /((ネム|ねむ|眠)い|nemii)/i, (msg) ->
    freq(msg, msg.random ["おきて", "おきろ！","出たｗｗｗ","おやお","http://livedoor.blogimg.jp/jigokuno_misawa/imgs/4/0/403d15ec.gif"])

  robot.hear /いい(？|\?)/i, (msg) ->
    freq(msg, msg.random ["ダメよーダメダメ"])
  
  robot.hear /^(帰|かえ)りたい$/i, (msg) ->
    kaeritai = """
　　　　  ∧ ∧　　　　　　
　　　　( ´･ω･)　 プハッ
　　　　/　　⌒ヽ　　　
　　　（人＿__つ_つ"""
    delay(msg, msg.random [kaeritai])
    
  robot.hear /(かずお|カズオ)/i, (msg) ->
    freq(msg, msg.random([
        "カズオ「死にたくなくなくない？ｯｼｮ？」",
        "カズオ「くらもとさーん、明日バーベキューしようぜｗｗｗｗｗｗ」",
        "カズオ「ｲｹﾒﾝとか幸せなやつは俺が殺してやっから」",
        "カズオ「今夜俺のCR-Zでランデブーしない？」",
        "カズオ「ｲｹﾒﾝとか幸せなやつは俺が コ ^ロ^ ス」",
        "カズオ「オレなら女神をﾄﾞｼｬﾒﾝにすることもできる。すいませんドシャメンは俺ですよね・・・屑野郎ですいません・・・」",
        "カズオ「ガイアが俺に助手席を開けておけと言っている」",
        "カズオ「オォﾝ。」",
        "カズオ「名前なんて言うの？のりこ？じゃ、のりちゃんでいいよね。のりちゃん、今日おれんち来ない？」",
        "カズオ「右目が疼くッ・・ｸｯ。。鎮まれッ鎮まれッ」",
        "カズオ「君すごくかわいいね・・・。アドレス（メール）とアドレス(住所)教えてよ。大丈夫だから。」",
        "カズオ「俺の鼻が慟哭(な)いてる・・・みんな迷惑かけてごめんな・・・」",
        "カズオ「みんな俺の腕毛から離れられないって言う笑　からみついて離れないんだって笑」",
        "カズオ「あいつが態度を改めるなら考えてやってもいい」"
    ]))

  freq = (msg, text) ->
    if Math.floor(Math.random() * REPLY_FREQ) == 0
      delay(msg, text)
    
  delay = (msg, text) ->
    time = Math.random() * REPLY_DELAY_MIN + (REPLY_DELAY_MAX - REPLY_DELAY_MIN)
    setTimeout (-> msg.send text), time


# Description:
#   tiqav検索
#
# Commands:
#   tiqav [WORD]
#
# Author:
#   ???

module.exports = (robot) ->
  robot.respond /tiqav (.*)/i, (msg) ->
    key = encodeURIComponent msg.match[1]
    url = "http://api.tiqav.com/search.json"
    request = msg.http(url).query({q: key}).get()
    request (err, res, body) ->
      json = JSON.parse body
      id = json[0].id
      ext = json[0].ext
      url = "http://tiqav.com/#{id}.#{ext}?t=#{Date.now()}"
      sourceUrl = json[i].source_url
      msg.send url

# Description:
# 	Para quienes les da flojera buscar en Google
# 	Huemul lo hace de la manera menos amable posible
#
# Dependencies:
# 	None
#
# Configuration:
# 	None
#
# Commands:
# 	hubot lmgtfy <@usuario opcional> <consulta>
# 	hubot google <@usuario opcional> <consulta>
#
# Author:
# 	@ravenous

rude = ["¿Era muy difícil? :wntard:","¿En serio no sabías eso? :mufasatard:","Bienvenido a la Internet :lol2:"]

module.exports = (robot) ->
	robot.respond /(?:lmgtfy|google)\s(?:@(\w*))?\s?(.+)/i, (res) ->
		lmgtfy = "http://lmgtfy.com/?q="
		if res.match[1]
			res.send "#{res.match[1]}: " + lmgtfy + "#{escape(res.match[2])}"
		else
			res.send lmgtfy + "#{escape(res.match[2])}"
		res.send res.random rude

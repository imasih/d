--Start By @Tele_Sudo

function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '*Ir Time:* `'..jdat.FAtime..'`\n*Ir Data:* `'..jdat.FAdate..'`\n------------\n*En Time:* `'..jdat.ENtime..'`\n *En Data:* `'..jdat.ENdate.. '`\n'
  tdcli.sendMessage(msg.chat_id_, 0, 1, text, 1, 'md')
end
return {
  patterns = {"^[/!]([Tt][iI][Mm][Ee])$"}, 
run = run 
}
--End By @Tele_Sudo
--Channel @LuaError


do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'sudo1' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..136141698
        chat_add_user(chat, user1, callback, false)
	return "مدیر ربات با موفقیت وارد گروه شد :/"
      end
  if matches[1] == 'sudo2' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..136141698
        chat_add_user(chat, user2, callback, false)
	return "مدیر دوم ربات با موفقیت وارد گروه شد :D"
    end
return {
  description = "ساپورت تیم", 
  usage = {
    "/help دریافت دستورات", 
	},
  patterns = {
    "^[!/.](sudo1)",
    "^[!/.](sudo2)",
    "^(sudo1)",
    "^(sudo2)",
    "^()",
  }, 
  run = run,
}


end

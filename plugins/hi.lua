local function run(msg, matches)
local mina = 75662928
  local hash = 'rank:variables'
  local text = ''
    local value = redis:hget(hash, msg.from.id)
     if not value then
        if msg.from.id == tonumber(mina) then 
           text = text..'بله مامان جوووونم فدات بشم\n'
         elseif is_admin2(msg.from.id) then
           text = text..'هوووووی چیکار به عشقم رقیه داری چشمات رو ببند برو گم شو عبضی \n \n\n'
         elseif is_owner2(msg.from.id, msg.to.id) then
           text = text..'هوووووی چیکار به عشقم رقیه داری چشمات رو ببند برو گم شو عبضی \n \n\n'
         elseif is_momod2(msg.from.id, msg.to.id) then
           text = text..'هوووووی چیکار به عشقم رقیه داری چشمات رو ببند برو گم شو عبضی \n \n'
     else
           text = text..'هوووووی چیکار به عشقم رقیه داری چشمات رو ببند برو گم شو عبضی \n\n\n'
      end
      else
       text = text..'هوووووی چیکار به عشقم رقیه داری چشمات رو ببند برو گم شو عبضی \n '..value..'  \n\n'
     end
return text
    
end

return {
  patterns = {


"^[Ss]lm$",
"^رقیه$",
"^رقی",

  }, 
  run = run 
}

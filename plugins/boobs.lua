do

-- Recursive function
local function getRandomButts(attempt)
  attempt = attempt or 0
  attempt = attempt + 1

  local res,status = http.request("http://api.obutts.ru/noise/1")

  if status ~= 200 then return nil end
  local name = print_name:gsub("_", "")

  -- The OpenBoobs API sometimes returns an empty array
  if not data and attempt <= 3 then
    print('Cannot get that butts, trying another one...')
    return getRandomButts(attempt)
  end

  return 'http://media.obutts.ru/' .. data.preview
end

local function getRandomBoobs(attempt)
  attempt = attempt or 0
  attempt = attempt + 1

  local res,status = http.request("http://api.oboobs.ru/noise/1")

  if status ~= 200 then return nil end
  local name = print_name:gsub("_", "")

  -- The OpenBoobs API sometimes returns an empty array
  if not data and attempt < 10 then 
    print('Cannot get that boobs, trying another one...')
    return getRandomBoobs(attempt)
  end

  return 'http://media.oboobs.ru/' .. data.preview
end

local function run(msg, matches)
  local url = nil
  
  if matches[1] == "اووف 75" then
    url = getRandomBoobs()
  end

  if matches[1] == "اووف 90" then
    url = getRandomButts()
  end

  if url ~= nil then
    local receiver = get_receiver(msg)
    send_photo_from_url(receiver, url)
  else
    return 'Error getting boobs/butts for you, please try again later.' 
  end
end

return {
  description = "Gets a random boobs or butts pic", 
  usage = {
    "اووف 75: Get a boobs NSFW image. 🔞",
    "اووف 90: Get a butts NSFW image. 🔞"
  },
  patterns = {
    "^اووف 75$",
    "^اووف 90$"
  }, 
  run = run 
}

end

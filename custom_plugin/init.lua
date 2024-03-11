local cjson = require "cjson";
local M = {}
--=========Helpers============== 
local currentDate = os.date("%Y-%m-%d")
local file_path = "/home/train/.local/state/nvim/timer/start.json";
local function P(tbl)
    for key, value in pairs(tbl) do
        print(key, value)
    end
end
local function editElement(table, keyToEdit, newValue)
    for key, value in pairs(table) do
        if key == keyToEdit then
            table[key] = newValue
            return true  -- Element found and edited
        end
    end
    return false  -- Element not found
end


local function timer_start ()
	local open = io.open;
	local function current_timer ()
		local file = open(file_path , "rb")
		    if not file then return nil end
    		local content = file:read "*a" -- *a or *all reads the whole file
  		  	file:close()
			return content;
		end

	local function timerCallback ()
		print("fired")
		local file = io.open(file_path,"w");
		if file then
		local database = current_timer();
			editElement(database , currentDate ,"tonumber(database[currentDate]) + 1");
			local jsonData = cjson.encode(database);
			file:write(jsonData);
			file:close();
		end
	end
	local timer = vim.loop.new_timer()
	timer:start(1000, 1000, vim.schedule_wrap(timerCallback))
end;


local function StartUp()
	local file = io.input(file_path);
	if file then
		local database = cjson.decode(io.read("*all"));
			if database[currentDate] == nil then
			database[currentDate] = "0";
			file:write(cjson.encode(database));
			file:close();
			timer_start()
			print("fired false")
			else
			timer_start()
			print("fired true")
		end
	else
		return false
	end
end

--==============================
M['start'] = function (start)
	return StartUp()
end;


M['stop'] = function (start)
	--local function timerCallback()
	--end
	--local timer = vim.loop.new_timer()
	--timer:start(1000, 1000, vim.schedule_wrap(timerCallback))
end;


M['sheet'] = function (start)
	print(start)
end;

return M;

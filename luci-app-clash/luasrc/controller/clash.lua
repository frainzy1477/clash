module("luci.controller.clash", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/clash") then
		return
	end


	entry({"admin", "services", "clash"},alias("admin", "services", "clash", "client"), _("Clash"), 60).dependent = true
	entry({"admin", "services", "clash", "client"},cbi("clash/client"),_("Clash Client"), 10).leaf = true
	entry({"admin", "services", "clash", "settings"},cbi("clash/settings"),_("Settings"), 20).leaf = true
	entry({"admin", "services", "clash", "config"},cbi("clash/config"),_("Config"), 30).leaf = true
	entry({"admin","services","clash","status"},call("action_status")).leaf=true
	entry({"admin", "services", "clash", "log"},cbi("clash/log"),_("Logs"), 40).leaf = true

	
end

local function dash_port()
	return luci.sys.exec("uci get clash.config.dash_port 2>/dev/null")
end
local function dash_pass()
	return luci.sys.exec("uci get clash.config.dash_pass 2>/dev/null")
end

local function is_running()
	return luci.sys.call("pidof clash >/dev/null") == 0
end

local function is_web()
	return luci.sys.call("pidof clash >/dev/null") == 0
end

local function localip()
	return luci.sys.exec("uci get network.lan.ipaddr")
end


function action_status()
	luci.http.prepare_content("application/json")
	luci.http.write_json({
		web = is_web(),
		clash = is_running(),
		localip = localip(),
		dash_port = dash_port(),
		dash_pass = dash_pass()

	})
end

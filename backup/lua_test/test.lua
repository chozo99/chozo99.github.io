
-- 127.0.0.1:6379> hgetall request_interval::test.fetcher.com
-- 1) "request_interval_msec"
-- 2) "200"
-- 3) "last_request_time"
-- 4) "1663822225.0735176"

print("Hello World")
-- ARGV = {"test.fetcher.com", "1663824482.1733418"}
ARGV = {"test.fetcher.com", "1663824482.3733418"}

local domain = ARGV[1]
local domain_request_interval_hkey = "request_interval::" .. domain
local current_time = tonumber(ARGV[2])

print(domain, current_time, domain_request_interval_hkey)

local request_interval_msec = tonumber("200")
local last_request_time_key = "last_request_time"
local last_request_time_value = tonumber("1663824482.1733418")

print(current_time)
print(request_interval_msec * 0.001)
print(current_time + (request_interval_msec * 0.001))
print(last_request_time_value)
print(last_request_time_value + (request_interval_msec * 0.001))

if current_time < (last_request_time_value + (request_interval_msec * 0.001)) then
    print("false")
    return
end

print("true")



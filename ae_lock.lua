os.loadAPI("ocs/apis/sensor")
local prox = sensor.wrap("left")
os.sleep(10)
local targets = prox.getTargets()
for name, details in pairs(targets) do
  print("Raining: " ..details["Name"])
  for k, v in pairs(prox.getTargetDetails(name)) do
    print(tostring(k)..": "..tostring(v))
  end
end

---@meta

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDBF4CDBC07E1706)  
---Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
---After removing a rise, you will be able to add a rise again.
---@param xLow number
---@param yLow number
---@param xHigh number
---@param yHigh number
---@param height number
---@return integer
function AddExtraCalmingQuad(xLow, yLow, xHigh, yHigh, height) end

---@deprecated
AddCurrentRise = AddExtraCalmingQuad

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B2A2CC86778B619)  
---```
---Gets the aggressiveness factor of the ocean waves.  
---```
---@return number
function GetDeepOceanScaler() end

---@deprecated
GetWavesIntensity = GetDeepOceanScaler
---@deprecated
GetCurrentIntensity = GetDeepOceanScaler

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6829842C06AE524)  
---Retrieves the depth of the water beneath the specified position, accounting for the waves.
---
---**Note:** The result might vary depending on the specific frame when this command is executed due to wave fluctuations.
---@param x number
---@param y number
---@param z number
---@return boolean, number
function GetWaterHeight(x, y, z) end

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8EE6B53CE13A9794)  
---Retrieves the depth of the water beneath the specified position, disregarding wave effects.
---
---**Note:** The result remains consistent across different frames as it doesn't consider wave fluctuations.
---@param x number
---@param y number
---@param z number
---@return boolean, number
function GetWaterHeightNoWaves(x, y, z) end

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC443FD757C3BA637)  
---```
---Sets the water height for a given position and radius.  
---```
---@param x number
---@param y number
---@param height number
---@param radius number
function ModifyWater(x, y, height, radius) end

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x547237AA71AB44DE)  
---This native does not have an official description.
---@param p0 number
function N_0x547237aa71ab44de(p0) end

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB1252E3E59A82AAF)  
---```
---p0 is the handle returned from _0xFDBF4CDBC07E1706  
---```
---@param p0 integer
function RemoveCurrentRise(p0) end

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x5E5E99285AE812DB)  
---```
---Sets the waves intensity back to original (1.0 in most cases). 
---```
function ResetDeepOceanScaler() end

---@deprecated
ResetWavesIntensity = ResetDeepOceanScaler
---@deprecated
ResetCurrentIntensity = ResetDeepOceanScaler

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB96B00E976BE977F)  
---```
---Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.  
---Works only ~200 meters around the player.  
---```
---@param intensity number
function SetDeepOceanScaler(intensity) end

---@deprecated
SetWavesIntensity = SetDeepOceanScaler
---@deprecated
SetCurrentIntensity = SetDeepOceanScaler

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8974647ED222EA5F)  
---Flags are identical to START_SHAPE_TEST\*, however, 128 is automatically set.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param flag integer
---@return boolean, vector3
function TestProbeAgainstAllWater(x1, y1, z1, x2, y2, z2, flag) end

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xFFA5D878809819DB)  
---This native does not have an official description.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return boolean, vector3
function TestProbeAgainstWater(x1, y1, z1, x2, y2, z2) end

---**`WATER` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2B3451FA1E3142E2)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param flag integer
---@return boolean, number
function TestVerticalProbeAgainstAllWater(x, y, z, flag) end


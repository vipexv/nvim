---@meta

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x754616EC6965D1FB)  
---Must be called every frame to take full effect.
function DisableWaterLookup() end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x754616EC6965D1BF)  
---This native does not have an official description.
function EnableWaterLookup() end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xFCA8B23F28813F69)  
---Checks against a global variable that is set by _SET_WORLD_WATER_TYPE. If that is set to one it will fail. Likely not the only issue but part of it.
---@param x number
---@param y number
---@param z number
---@return boolean, number
function GetWaterHeight(x, y, z) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xDCF3690AA262C03F)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@return boolean, number
function GetWaterHeightNoWaves(x, y, z) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x189739A7631C1867)  
---This native does not have an official description.
---@return integer
function GetWorldWaterType() end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x09A1C7DFDCE54FBC)  
---Called together with REMOVE_EXTRA_CALMING_QUAD in rcm_crackpot1 R* Script: p0 = 0
---_REMOVE_*
---@param p0 integer
function N_0x09a1c7dfdce54fbc(p0) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x0DCEC6A92E497E17)  
---Only used in native_son1 R* Script: p1 = 1
---@param entity integer
---@param p1 integer
function N_0x0dcec6a92e497e17(entity, p1) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xA33F5069B0CB89B8)  
---Only used in fishing_core R* Script
function N_0xa33f5069b0cb89b8() end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xB34A6009A0DB80B8)  
---Used in bounty1, fanale3, sean1 R* Scripts
---@param entity integer
function N_0xb34a6009a0db80b8(entity) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE8126623008372AA)  
---Only used in fussar1 / train_robbery2 R* Script
function N_0xe8126623008372aa() end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xF0FBF193F1F5C0EA)  
---Only used in fishing_core R* Script
---@param ped integer
function N_0xf0fbf193f1f5c0ea(ped) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x4BEF8DD75AF6C71C)  
---Only used in rcm_crackpot1 R* Script: p0 = 0
---@param index integer
function RemoveExtraCalmingQuad(index) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xC63540AEF8384769)  
---Only used in guama1 / guama3 R* Script
---_REQUEST_* or _RESET_*
function ResetGuarmaWaterState() end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xC63540AEF8384732)  
---Only used in R* Script guama1
---@param wavesHeight number
---@param p1 number
---@param wavesDirection integer
---@param p3 number
---@param wavesAmount number
---@param p5 number
---@param wavesSpeed number
---@param wavesStrength number
---@param ignoreHeight boolean
function SetOceanGuarmaWaterQuadrant(wavesHeight, p1, wavesDirection, p3, wavesAmount, p5, wavesSpeed, wavesStrength, ignoreHeight) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE8770EE02AEE45C2)  
---0 = World
---1 = Guarma
---@param waterType integer
function SetWorldWaterType(waterType) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x8974647ED222EA5F)  
---enum eScriptWaterTestResult
---{
---	SCRIPT_WATER_TEST_RESULT_NONE,
---	SCRIPT_WATER_TEST_RESULT_WATER,
---	SCRIPT_WATER_TEST_RESULT_BLOCKED,
---};
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param flags integer
---@return integer, vector3
function TestProbeAgainstAllWater(x1, y1, z1, x2, y2, z2, flags) end

---**`WATER` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x2B3451FA1E3142E2)  
---Checks against a global variable that is set by _SET_WORLD_WATER_TYPE. If it's set to 1 (Guarma) it will fail.
---
---See TEST_PROBE_AGAINST_ALL_WATER.
---@param x number
---@param y number
---@param z number
---@param flags integer
---@return integer, number
function TestVerticalProbeAgainstAllWater(x, y, z, flags) end


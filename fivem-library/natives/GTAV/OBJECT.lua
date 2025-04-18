---@meta

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6F8838D03D1DC226)  
---p5 only set to true in single player native scripts. Door hashes normally look like `PROP_[int]_DOOR_[int]` for interior doors and `PROP_BUILDING_[int]_DOOR_[int]` exterior doors but you can just make up your own hash if you want.
---
---If scriptDoor is true, register the door on the script handler host (note: there's a hardcap on the number of script IDs that can be added to the system at a given time). If scriptDoor and isLocal are both false, the door is considered to be in a "Persists w/o netobj" state.
---
---A simple "localized" door-system (with hundreds/thousands of doors) can be created by setting p5, p6, and p7 to false and using EventHandlers to synchronize the states to: [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53), [DOOR_SYSTEM_SET_OPEN_RATIO](#\_0xB6E6FBA95C7324AC), [DOOR_SYSTEM_SET_HOLD_OPEN](#\_0xD9B71952F78A2640), etc.
---@param doorHash integer | string
---@param modelHash integer | string
---@param x number
---@param y number
---@param z number
---@param p5 boolean
---@param scriptDoor boolean
---@param isLocal boolean
function AddDoorToSystem(doorHash, modelHash, x, y, z, p5, scriptDoor, isLocal) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x85B6C850546FDDE2)  
---This native does not have an official description.
---@param garageHash integer | string
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@param p4 any
---@return boolean
function AreEntitiesEntirelyInsideGarage(garageHash, p1, p2, p3, p4) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DC39368BDD57755)  
---This native does not have an official description.
---@param pickupObject integer
---@param ped integer
function AttachPortablePickupToPed(pickupObject, ped) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xE7E4C198B0185900)  
---This native does not have an official description.
---@param p0 integer
---@param p1 any
---@param p2 boolean
function BreakObjectFragmentChild(p0, p1, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xDA05194260CDCDF9)  
---This native does not have an official description.
---@param garageHash integer | string
---@param isNetwork boolean
function ClearGarageArea(garageHash, isNetwork) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x190428512B240692)  
---This native does not have an official description.
---@param garageHash integer | string
---@param vehicles boolean
---@param peds boolean
---@param objects boolean
---@param isNetwork boolean
function ClearObjectsInsideGarage(garageHash, vehicles, peds, objects, isNetwork) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x673966A0C0FD7171)  
---Creates an ambient pickup given the hash. Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
---@param pickupHash integer | string
---@param posX number
---@param posY number
---@param posZ number
---@param flags integer
---@param value integer
---@param modelHash integer | string
---@param returnHandle boolean
---@param p8 boolean
---@return integer
function CreateAmbientPickup(pickupHash, posX, posY, posZ, flags, value, modelHash, returnHandle, p8) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0589B5E791CE9B2B)  
---```
---Spawns one or more money pickups.  
---x: The X-component of the world position to spawn the money pickups at.  
---y: The Y-component of the world position to spawn the money pickups at.  
---z: The Z-component of the world position to spawn the money pickups at.  
---value: The combined value of the pickups (in dollars).  
---amount: The number of pickups to spawn.  
---model: The model to use, or 0 for default money model.  
---Example:  
---CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  
---Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  
---==============================================  
---Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000  
---```
---@param x number
---@param y number
---@param z number
---@param value integer
---@param amount integer
---@param model integer | string
function CreateMoneyPickups(x, y, z, value, amount, model) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x9C93764223E29C50)  
---```
---NativeDB Introduced: v2372
---```
---@param pickupHash any
---@param posX number
---@param posY number
---@param posZ number
---@param flags integer
---@param value integer
---@param modelHash any
---@param p7 boolean
---@param p8 boolean
---@return any
function CreateNonNetworkedAmbientPickup(pickupHash, posX, posY, posZ, flags, value, modelHash, p7, p8) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x125494B98A21AAF7)  
---This native does not have an official description.
---@param pickupHash integer | string
---@param x number
---@param y number
---@param z number
---@param placeOnGround boolean
---@param modelHash integer | string
---@return integer
function CreateNonNetworkedPortablePickup(pickupHash, x, y, z, placeOnGround, modelHash) end

---@deprecated
CreatePortablePickup_2 = CreateNonNetworkedPortablePickup

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x509D5878EB39E842)  
---Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
---This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---@param modelHash integer | string
---@param x number
---@param y number
---@param z number
---@param isNetwork boolean
---@param netMissionEntity boolean
---@param doorFlag boolean
---@return integer
function CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x9A294B2138ABB884)  
---Creates an object (prop) with the specified model centered at the specified position.
---This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---@param modelHash integer | string
---@param x number
---@param y number
---@param z number
---@param isNetwork boolean
---@param netMissionEntity boolean
---@param doorFlag boolean
---@return integer
function CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, doorFlag) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xFBA08C503DD5FA58)  
---Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
---@param pickupHash integer | string
---@param posX number
---@param posY number
---@param posZ number
---@param p4 integer
---@param value integer
---@param p6 boolean
---@param modelHash integer | string
---@return integer
function CreatePickup(pickupHash, posX, posY, posZ, p4, value, p6, modelHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x891804727E0A98B7)  
---```
---Pickup hashes: pastebin.com/8EuSv2r1  
---flags:  
---8 (1 << 3): place on ground  
---512 (1 << 9): spin around  
---```
---@param pickupHash integer | string
---@param posX number
---@param posY number
---@param posZ number
---@param rotX number
---@param rotY number
---@param rotZ number
---@param flag integer
---@param amount integer
---@param p9 any
---@param p10 boolean
---@param modelHash integer | string
---@return integer
function CreatePickupRotate(pickupHash, posX, posY, posZ, rotX, rotY, rotZ, flag, amount, p9, p10, modelHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EAF1FDB2FB55698)  
---Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
---@param pickupHash integer | string
---@param x number
---@param y number
---@param z number
---@param placeOnGround boolean
---@param modelHash integer | string
---@return integer
function CreatePortablePickup(pickupHash, x, y, z, placeOnGround, modelHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x539E0AE3E6634B9F)  
---Deletes the specified object.
---
---**Note**: If for some reason the entity won't delete, you might want to check if the object is a mission entity.
---
---```
---NativeDB Introduced: v323
---```
---@param object integer
function DeleteObject(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xCF463D1E9A0AECB1)  
---This native does not have an official description.
---@param pickupObject integer
function DetachPortablePickupFromPed(pickupObject) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFA48E2FF417213F)  
---```
---p5 is usually 0.  
---```
---@param x number
---@param y number
---@param z number
---@param radius number
---@param hash integer | string
---@param p5 boolean
---@return boolean
function DoesObjectOfTypeExistAtCoords(x, y, z, radius, hash, p5) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFC1CA75AD4074D1)  
---This native does not have an official description.
---@param pickup integer
---@return boolean
function DoesPickupExist(pickup) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9EFB6DBF7DAAEA3)  
---This native does not have an official description.
---@param pickupObject integer
---@return boolean
function DoesPickupObjectExist(pickupObject) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9C36251F6E48E33)  
---Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
---@param pickupHash integer | string
---@param x number
---@param y number
---@param z number
---@param radius number
---@return boolean
function DoesPickupOfTypeExistInArea(pickupHash, x, y, z, radius) end

---@deprecated
IsPickupWithinRadius = DoesPickupOfTypeExistInArea

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x52AF537A0C5B8AAD)  
---```
---Returns true if a destructible object with this handle exists, false otherwise.  
---```
---@param object integer
---@return boolean
function DoesRayfireMapObjectExist(object) end

---@deprecated
DoesDesObjectExist = DoesRayfireMapObjectExist

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x9B12F9A24FABEDB0)  
---Hardcoded not to work in multiplayer environments.
---Native name between `SET_LOCAL_PLAYER_VISIBLE_LOCALLY` & `SET_MAX_WANTED_LEVEL`.
---
---```
---OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked
---OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked
---```
---@param modelHash integer | string
---@param x number
---@param y number
---@param z number
---@param locked boolean
---@param xRotMult number
---@param yRotMult number
---@param zRotMult number
function DoorControl(modelHash, x, y, z, locked, xRotMult, yRotMult, zRotMult) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x589F80B325CC82C5)  
---Search radius: 0.5
---@param x number
---@param y number
---@param z number
---@param modelHash integer | string
---@return boolean, integer
function DoorSystemFindExistingDoor(x, y, z, modelHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xE851471AEFC3374F)  
---```
---NativeDB Introduced: v1868
---```
---@param doorHash integer | string
---@return number
function DoorSystemGetAutomaticDistance(doorHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x4BC2854478F3A749)  
---This native does not have an official description.
---@param doorHash integer | string
---@return integer
function DoorSystemGetDoorPendingState(doorHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x160AA1B32F6139B8)  
---This native does not have an official description.
---@param doorHash integer | string
---@return integer
function DoorSystemGetDoorState(doorHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF97CDD4FC08FD34)  
---This native does not have an official description.
---@param doorHash integer | string
---@return boolean
function DoorSystemGetIsPhysicsLoaded(doorHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x65499865FCA6E5EC)  
---This native does not have an official description.
---@param doorHash integer | string
---@return number
function DoorSystemGetOpenRatio(doorHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BA001CB45CBF627)  
---This native does not have an official description.
---@param doorHash integer | string
---@param distance number
---@param requestDoor boolean
---@param forceUpdate boolean
function DoorSystemSetAutomaticDistance(doorHash, distance, requestDoor, forceUpdate) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x03C27E13B42A0E82)  
---Includes networking check: ownership vs. or the door itself **isn't** networked.
---@param doorHash integer | string
---@param rate number
---@param requestDoor boolean
---@param forceUpdate boolean
function DoorSystemSetAutomaticRate(doorHash, rate, requestDoor, forceUpdate) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BAB9442830C7F53)  
---Lockstates not applied and CNetObjDoor's not created until [DOOR_SYSTEM_GET_IS_PHYSICS_LOADED](#\_0xDF97CDD4FC08FD34) returns true.
---
---### Door lock states: (v323)
---
---*   **0**: UNLOCKED
---*   **1**: LOCKED
---*   **2**: DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA
---*   **3**: DOORSTATE_FORCE_UNLOCKED_THIS_FRAME
---*   **4**: DOORSTATE_FORCE_LOCKED_THIS_FRAME
---*   **5**: DOORSTATE_FORCE_OPEN_THIS_FRAME
---*   **6**: DOORSTATE_FORCE_CLOSED_THIS_FRAME
---@param doorHash integer | string
---@param state integer
---@param requestDoor boolean
---@param forceUpdate boolean
function DoorSystemSetDoorState(doorHash, state, requestDoor, forceUpdate) end

---@deprecated
SetDoorAccelerationLimit = DoorSystemSetDoorState

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD9B71952F78A2640)  
---Includes networking check: ownership vs. or the door itself **isn't** networked.
---@param doorHash integer | string
---@param toggle boolean
function DoorSystemSetHoldOpen(doorHash, toggle) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6E6FBA95C7324AC)  
---```
---Sets the ajar angle of a door.
---Ranges from -1.0 to 1.0, and 0.0 is closed / default.
---```
---@param doorHash integer | string
---@param ajar number
---@param requestDoor boolean
---@param forceUpdate boolean
function DoorSystemSetOpenRatio(doorHash, ajar, requestDoor, forceUpdate) end

---@deprecated
SetDoorAjarAngle = DoorSystemSetOpenRatio

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC485E07E4F0B7958)  
---Includes networking check: ownership vs. or the door itself **isn't** networked.
---@param doorHash integer | string
---@param removed boolean
---@param requestDoor boolean
---@param forceUpdate boolean
function DoorSystemSetSpringRemoved(doorHash, removed, requestDoor, forceUpdate) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF2E1A7133DD356A6)  
---This native does not have an official description.
---@param garageHash integer | string
---@param toggle boolean
function EnableSavingInGarage(garageHash, toggle) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF9C1681347C8BD15)  
---Resets and brings back all the children of a fragment based object.
---This should be used when attaching or detaching an object from another entity, especially when the object being detached consists of multiple fragments.
---
---Attempting to teleport a fragment-based object using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B) such as a flag object, will result in it remaining in place and failing to teleport, given the condition mentioned in the preceding statement.
---
---The native should be executed after detaching the object from its parent entity and before calling [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
---
---Example given down below.
---@param object integer
function FixObjectFragment(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x758A5C1B3B1E1990)  
---This native does not have an official description.
---@param p0 any
function ForcePickupRegenerate(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xE143FA2249364369)  
---```
---Has 8 params in the latest patches.  
---isMission - if true doesn't return mission objects  
---```
---@param x number
---@param y number
---@param z number
---@param radius number
---@param modelHash integer | string
---@param isMission boolean
---@param p6 boolean
---@param p7 boolean
---@return integer
function GetClosestObjectOfType(x, y, z, radius, modelHash, isMission, p6, p7) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x163F8B586BC95F2A)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param modelHash integer | string
---@param rotationOrder integer
---@return any, vector3, vector3
function GetCoordsAndRotationOfClosestObjectOfType(x, y, z, radius, modelHash, rotationOrder) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x43C677F1E1158005)  
---```
---NativeDB Introduced: v1604
---```
---@param entity integer
---@param p1 any
---@return boolean
function GetIsArenaPropPhysicsDisabled(entity, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB6FBFD079B8D0596)  
---This native does not have an official description.
---@param p0 any
---@param p1 boolean
---@return number
function GetObjectFragmentDamageHealth(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xE84EB93729C5F36A)  
---This native does not have an official description.
---@param object integer
---@return integer
function GetObjectTextureVariation(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x163E252DE035A133)  
---Calculates the world coordinates after applying the specified offsets to the given position, relative to a certain heading.
---This native is similar to [`GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS`](#\_0x1899F328B0E12848), but uses a world position and heading as the reference point.
---@param xPos number
---@param yPos number
---@param zPos number
---@param heading number
---@param xOffset number
---@param yOffset number
---@param zOffset number
---@return vector3
function GetOffsetFromCoordAndHeadingInWorldCoords(xPos, yPos, zPos, heading, xOffset, yOffset, zOffset) end

---@deprecated
GetObjectOffsetFromCoords = GetOffsetFromCoordAndHeadingInWorldCoords

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x225B8B35C88029B3)  
---This native does not have an official description.
---@param pickup integer
---@return vector3
function GetPickupCoords(pickup) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB3ECA65C7317F174)  
---This native does not have an official description.
---@return number
function GetPickupGenerationRangeMultiplier() end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x5EAAD83F8CFB4575)  
---```
---returns pickup hash.
---```
---@param pickupHash integer | string
---@return integer
function GetPickupHash(pickupHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD6429A016084F1A5)  
---```
---NativeDB Introduced: v1290
---```
---@param weapon integer | string
---@return integer
function GetPickupHashFromWeapon(weapon) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x5099BC55630B25AE)  
---This native does not have an official description.
---@param pickup integer
---@return integer
function GetPickupObject(pickup) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB48FCED898292E52)  
---```
---Example:
---OBJECT::GET_RAYFIRE_MAP_OBJECT(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");
---```
---@param x number
---@param y number
---@param z number
---@param radius number
---@param name string
---@return integer
function GetRayfireMapObject(x, y, z, radius, name) end

---@deprecated
GetDesObject = GetRayfireMapObject

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x260EE4FDBDF4DB01)  
---```
---`object`: The des-object handle to get the animation progress from.
---Return value is a float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
---```
---@param object integer
---@return number
function GetRayfireMapObjectAnimPhase(object) end

---@deprecated
GetDesObjectAnimProgress = GetRayfireMapObjectAnimPhase

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E16BC2503FF1FF0)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param p3 number
---@param p4 number
---@return vector3
function GetSafePickupCoords(x, y, z, p3, p4) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xEDC1A5B84AEF33FF)  
---```
---locked is 0 if no door is found  
---locked is 0 if door is unlocked  
---locked is 1 if door is found and unlocked.  
----------------  
---the locked bool is either 0(unlocked)(false) or 1(locked)(true)  
---```
---@param type integer | string
---@param x number
---@param y number
---@param z number
---@return boolean, number
function GetStateOfClosestDoorOfType(type, x, y, z) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x899BA936634A322E)  
---See [`SET_STATE_OF_RAYFIRE_MAP_OBJECT`](#\_0x5C29F698D404C5E1) to see the different states
---
---Get a destructible object's state. Substract 1 to get the real state. For example, if the object just spawned (state 2), the native will return 3.
---@param object integer
---@return integer
function GetStateOfRayfireMapObject(object) end

---@deprecated
GetDesObjectState = GetStateOfRayfireMapObject

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x08F96CA6C551AD51)  
---This native does not have an official description.
---@param pickupHash integer | string
---@return integer
function GetWeaponTypeFromPickupType(pickupHash) end

---@deprecated
GetWeaponHashFromPickup = GetWeaponTypeFromPickupType

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x761B0E69AC4D007E)  
---This native does not have an official description.
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param modelHash integer | string
---@param p5 any
---@return boolean
function HasClosestObjectOfTypeBeenBroken(p0, p1, p2, p3, modelHash, p5) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x46494A2475701343)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param modelHash integer | string
---@param p5 boolean
---@return boolean
function HasClosestObjectOfTypeBeenCompletelyDestroyed(x, y, z, radius, modelHash, p5) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8ABFB70C49CC43E2)  
---```
---NativeDB Added Parameter 2: Any p1
---```
---@param object integer
---@return boolean
function HasObjectBeenBroken(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x80EC48E6679313F9)  
---This native does not have an official description.
---@param pickup integer
---@return boolean
function HasPickupBeenCollected(pickup) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x867458251D47CCB2)  
---This native does not have an official description.
---@param pickup integer
---@param toggle boolean
function HidePortablePickupWhenDetached(pickup, toggle) end

---@deprecated
HidePickup = HidePortablePickupWhenDetached

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x673ED815D6E323B7)  
---This native does not have an official description.
---@param garageHash integer | string
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@param p4 any
---@return boolean
function IsAnyEntityEntirelyInsideGarage(garageHash, p1, p2, p3, p4) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x397DC58FF00298D1)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param range number
---@param p4 boolean
---@return boolean
function IsAnyObjectNearPoint(x, y, z, range, p4) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC531EE8A1145A149)  
---This native does not have an official description.
---@param doorHash integer | string
---@return boolean
function IsDoorClosed(doorHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC153C43EA202C8C1)  
---```
---if (OBJECT::IS_DOOR_REGISTERED_WITH_SYSTEM(doorHash))
---{
---    OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);
---}
---```
---@param doorHash integer | string
---@return boolean
function IsDoorRegisteredWithSystem(doorHash) end

---@deprecated
DoesDoorExist = IsDoorRegisteredWithSystem

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x90E47239EA1980B8)  
---This native does not have an official description.
---@param garageHash integer | string
---@param p1 boolean
---@param p2 integer
---@return boolean
function IsGarageEmpty(garageHash, p1, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xFC481C641EBBD27D)  
---This native does not have an official description.
---@param object integer
---@return boolean
function IsObjectAPickup(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0378C08504160D0D)  
---```
---NativeDB Introduced: v1365
---```
---@param object integer
---@return boolean
function IsObjectAPortablePickup(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x372EF6699146A1E4)  
---This native does not have an official description.
---@param garageHash integer | string
---@param entity integer
---@param p2 number
---@param p3 integer
---@return boolean
function IsObjectEntirelyInsideGarage(garageHash, entity, p2, p3) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8C90FE4B381BA60A)  
---This native does not have an official description.
---@param objectHash integer | string
---@param x number
---@param y number
---@param z number
---@param range number
---@return boolean
function IsObjectNearPoint(objectHash, x, y, z, range) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF0EED5A6BC7B237A)  
---This native does not have an official description.
---@param garageHash integer | string
---@param entity integer
---@param p2 integer
---@return boolean
function IsObjectPartiallyInsideGarage(garageHash, entity, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8B32ACE6326A7546)  
---This native does not have an official description.
---@param object integer
---@return boolean
function IsObjectVisible(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x11D1E53A726891FE)  
---This native does not have an official description.
---@param object integer
---@return boolean
function IsPickupWeaponObjectValid(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x024A60DEB0EA69F0)  
---This native does not have an official description.
---@param garageHash integer | string
---@param player integer
---@param p2 number
---@param p3 integer
---@return boolean
function IsPlayerEntirelyInsideGarage(garageHash, player, p2, p3) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1761DC5D8471CBAA)  
---This native does not have an official description.
---@param garageHash integer | string
---@param player integer
---@param p2 integer
---@return boolean
function IsPlayerPartiallyInsideGarage(garageHash, player, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2A70BAE8883E4C81)  
---An **angled area** is an X-Z oriented rectangle with three parameters:
---
---1.  **origin**: the mid-point along a base edge of the rectangle;
---2.  **extent**: the mid-point of opposite base edge on the other Z;
---3.  **width**: the length of the base edge; (named derived from logging strings `CNetworkRoadNodeWorldStateData`).
---
---The oriented rectangle can then be derived from the direction of the two points (`norm(origin - extent)`), its orthonormal, and the width, e.g:
---
---1.  [golf_mp](https://i.imgur.com/JhsQAK9.png)
---2.  [am_taxi](https://i.imgur.com/TJWCZaT.jpg)
---@param xPos number
---@param yPos number
---@param zPos number
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param width number
---@param p10 boolean
---@param includez boolean
---@return boolean
function IsPointInAngledArea(xPos, yPos, zPos, x1, y1, z1, x2, y2, z2, width, p10, includez) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xADBE4809F19F927A)  
---```
---is this like setting is as no longer needed?  
---```
---@param object integer
function MarkObjectForDeletion(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x006E4B040ED37EC3)  
---```
---NativeDB Introduced: v1868
---```
---@param p0 any
function N_0x006e4b040ed37ec3(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0596843B34B95CE5)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function N_0x0596843b34b95ce5(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A6CBB06E2D0D79D)  
---```
---NativeDB Introduced: v1604
---```
---@param p0 any
---@param p1 any
function N_0x1a6cbb06e2d0d79d(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C57C94A6446492A)  
---```
---NativeDB Introduced: v1604
---```
---@param p0 any
---@param p1 any
function N_0x1c57c94a6446492a(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E3F1B1B891A2AAA)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function N_0x1e3f1b1b891a2aaa(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2542269291C6AC84)  
---```
---NativeDB Introduced: v1180
---```
---@param p0 any
---@return any
function N_0x2542269291c6ac84(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x27F248C3FEBFAAD3)  
---```
---NativeDB Introduced: v2372
---```
---@param p0 any
---@param p1 any
function N_0x27f248c3febfaad3(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x31574B1B41268673)  
---```
---NativeDB Introduced: v2189
---```
---@param p0 any
---@param p1 any
function N_0x31574b1b41268673(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x31F924B53EADDF65)  
---This native does not have an official description.
---@param p0 boolean
function N_0x31f924b53eaddf65(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x394CD08E31313C28)  
---This native does not have an official description.
function N_0x394cd08e31313c28() end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x39A5FB7EAF150840)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function N_0x39a5fb7eaf150840(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x3B2FD68DB5F8331C)  
---```
---NativeDB Removed Parameter 3: int R
---NativeDB Removed Parameter 4: int G
---NativeDB Removed Parameter 5: int B
---NativeDB Introduced: v757
---```
---@param object integer
---@param toggle boolean
---@param R integer
---@param G integer
---@param B integer
function N_0x3b2fd68db5f8331c(object, toggle, R, G, B) end

---@deprecated
SetObjectColour = N_0x3b2fd68db5f8331c

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x3BD770D281982DB5)  
---```
---NativeDB Introduced: v1604
---```
---@param p0 any
---@param p1 any
---@return any
function N_0x3bd770d281982db5(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x46F3ADD1E2D5BAF2)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function N_0x46f3add1e2d5baf2(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C134B4DF76025D0)  
---```
---NativeDB Introduced: v1180
---```
---@param p0 any
---@param p1 any
function N_0x4c134b4df76025d0(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x62454A641B41F3C5)  
---This native does not have an official description.
---@param p0 any
function N_0x62454a641b41f3c5(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x63ECF581BC70E363)  
---```
---NativeDB Introduced: v1365
---```
---@param p0 any
---@param p1 any
function N_0x63ecf581bc70e363(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x641F272B52E2F0F8)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function N_0x641f272b52e2f0f8(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x659F9D71F52843F8)  
---```
---NativeDB Introduced: v1290
---```
---@param p0 any
---@param p1 any
function N_0x659f9d71f52843f8(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x66A49D021870FE88)  
---This native does not have an official description.
function N_0x66a49d021870fe88() end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x701FDA1E82076BA4)  
---Clears the fields sets by [N\_0xc7f29ca00f46350e](#\_0xC7F29CA00F46350E) (1604 retail: 0x1424A7A10, 0x1424A7A11) and iterates over the global CDoor's bucket-list.
---
---Related to its "Pre-networked state"?
function N_0x701fda1e82076ba4() end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x734E1714D077DA9A)  
---```
---NativeDB Introduced: v1604
---```
---@param p0 any
---@param p1 any
function N_0x734e1714d077da9a(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x762DB2D380B48D04)  
---This native does not have an official description.
---@param p0 any
function N_0x762db2d380b48d04(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x7813E8B8C4AE4799)  
---SET_PICKUP_\*
---
---```
---NativeDB Introduced: v1734
---```
---@param pickup integer
function N_0x7813e8b8c4ae4799(pickup) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x826D1EE4D1CAFC78)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function N_0x826d1ee4d1cafc78(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x834344A414C7C85D)  
---```
---NativeDB Introduced: v2372
---```
---@param p0 any
---@param p1 any
function N_0x834344a414c7c85d(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x858EC9FD25DE04AA)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function N_0x858ec9fd25de04aa(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8881C98A31117998)  
---```
---NativeDB Added Parameter 2: Any p1
---```
---@param p0 any
function N_0x8881c98a31117998(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8CAAB2BD3EA58BD4)  
---This native does not have an official description.
---@param p0 any
function N_0x8caab2bd3ea58bd4(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8CFF648FBD7330F1)  
---```
---NativeDB Introduced: v757
---```
---@param p0 any
function N_0x8cff648fbd7330f1(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8DCA505A5C196F05)  
---```
---NativeDB Introduced: v1180
---```
---@param p0 any
---@param p1 any
function N_0x8dca505a5c196f05(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA08FE5E49BDC39DD)  
---This native does not have an official description.
---@param p0 any
---@param p1 number
---@param p2 boolean
function N_0xa08fe5e49bdc39dd(p0, p1, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2C1F5E92AFE49ED)  
---```
---CLEAR_*
---```
function N_0xa2c1f5e92afe49ed() end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA85A21582451E951)  
---Some property related to gates. Native name between `DOOR_SYSTEM_SET_AUTOMATIC_RATE` and `DOOR_SYSTEM_SET_DOOR_STATE`.
---@param doorHash integer | string
---@param p1 boolean
function N_0xa85a21582451e951(doorHash, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA059C615DE9DD03)  
---```
---NativeDB Introduced: v1180
---```
---@param p0 any
---@param p1 any
function N_0xaa059c615de9dd03(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xADF084FB8F075D06)  
---```
---NativeDB Introduced: v1604
---```
---@param p0 integer
---@return boolean
function N_0xadf084fb8f075d06(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xAFE24E4D29249E4A)  
---```
---NativeDB Introduced: v1734
---```
---@param object integer
---@param p1 number
---@param p2 number
---@param p3 boolean
---@return boolean
function N_0xafe24e4d29249e4a(object, p1, p2, p3) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB2D0BDE54F0E8E5A)  
---This native does not have an official description.
---@param object integer
---@param toggle boolean
function N_0xb2d0bde54f0e8e5a(object, toggle) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB5B7742424BD4445)  
---```
---NativeDB Introduced: v1604
---```
---@param p0 any
---@param p1 any
function N_0xb5b7742424bd4445(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7C6D80FB371659A)  
---```
---Clears all areas created by 0xD4A7A435B3710D05
---
---CLEAR_*
---
---NativeDB Introduced: v1290
---```
function N_0xb7c6d80fb371659a() end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xBFFE53AE7E67FCDC)  
---```
---NativeDB Introduced: v1290
---```
---@param p0 any
---@param p1 any
function N_0xbffe53ae7e67fcdc(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6033D32241F6FB5)  
---This native does not have an official description.
---@param object integer
---@param toggle boolean
function N_0xc6033d32241f6fb5(object, toggle) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC7F29CA00F46350E)  
---See [`N_0x701fda1e82076ba4`](#\_0x701FDA1E82076BA4).
---@param p0 boolean
function N_0xc7f29ca00f46350e(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD05A3241B9A86F19)  
---```
---NativeDB Introduced: v1180
---```
---@param p0 any
---@param p1 any
function N_0xd05a3241b9a86f19(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4A7A435B3710D05)  
---```
---Adds an area that seems to be related to pickup physics behavior.
---Max amount of areas is 10. Only works in multiplayer.
---
---ADD_*
---
---NativeDB Introduced: v1290
---```
---@param x number
---@param y number
---@param z number
---@param radius number
function N_0xd4a7a435b3710d05(x, y, z, radius) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xDB41D07A45A6D4B7)  
---This native does not have an official description.
---@param p0 any
---@return any
function N_0xdb41d07a45a6d4b7(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xE05F6AEEFEB0BB02)  
---```
---NativeDB Introduced: v1180
---```
---@param p0 any
---@param p1 any
---@param p2 any
function N_0xe05f6aeefeb0bb02(p0, p1, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB6F1A9B5510A5D2)  
---This native does not have an official description.
---@param p0 any
---@param p1 boolean
function N_0xeb6f1a9b5510a5d2(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF92099527DB8E2A7)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function N_0xf92099527db8e2a7(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xFDC07C58E8AAB715)  
---A\*
---
---```
---NativeDB Introduced: v1734
---```
---@param pickupHash integer | string
function N_0xfdc07c58e8aab715(pickupHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD76EEEF746057FD6)  
---Casts a ray downward from the object's position and places the object on the surface it hits (including world surface and objects). Use [`PLACE_OBJECT_ON_GROUND_PROPERLY`](#\_0x58A850EAEE20FAA3) to not include objects when determining the surface.
---@param object integer
---@return boolean
function PlaceObjectOnGroundOrObjectProperly(object) end

---@deprecated
PlaceObjectOnGroundProperly_2 = PlaceObjectOnGroundOrObjectProperly

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x58A850EAEE20FAA3)  
---This native does not have an official description.
---@param object integer
---@return boolean
function PlaceObjectOnGroundProperly(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x92AEFB5F6E294023)  
---This native does not have an official description.
---@param object integer
---@param p1 boolean
---@param p2 boolean
function PreventCollectionOfPortablePickup(object, p1, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x27F9D613092159CF)  
---Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
---@param pickupHash integer | string
function RemoveAllPickupsOfType(pickupHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x464D8E1427156FE4)  
---CDoor and CDoorSystemData still internally allocated (and their associations between doorHash, modelHash, and coordinates).
---
---Only its NetObj removed and flag `*(v2 + 192) |= 8u` (1604 retail) toggled.
---@param doorHash integer | string
function RemoveDoorFromSystem(doorHash) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x4A39DB43E47CF3AA)  
---This native does not have an official description.
---@param object integer
function RemoveObjectHighDetailModel(object) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x3288D8ACAECD2AB2)  
---This native does not have an official description.
---@param pickup integer
function RemovePickup(pickup) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x3430676B11CDF21D)  
---```
---draws circular marker at pos
----1 = none
---0 = red
---1 = green
---2 = blue
---3 = green larger
---4 = nothing
---5 = green small
---```
---@param x number
---@param y number
---@param z number
---@param colorIndex integer
function RenderFakePickupGlow(x, y, z, colorIndex) end

---@deprecated
HighlightPlacementCoords = RenderFakePickupGlow

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x406137F8EF90EAF5)  
---This native does not have an official description.
---@param object integer
---@param toggle boolean
function SetActivateObjectPhysicsAsSoonAsItIsUnfrozen(object, toggle) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xBCE595371A5FBAAF)  
---```
---Requires a component_at_*_flsh to be attached to the weapon object
---```
---@param object integer
---@param toggle boolean
function SetCreateWeaponObjectLightSource(object, toggle) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x911024442F4898F0)  
---```
---Activate the physics to: "xs_prop_arena_{flipper,wall,bollard,turntable,pit}"
---```
---
---```
---NativeDB Introduced: v1604
---```
---@param entity integer
---@param toggle boolean
---@param p2 integer
function SetEnableArenaPropPhysics(entity, toggle, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB20834A7DD3D8896)  
---```
---NativeDB Introduced: v1604
---```
---@param entity integer
---@param toggle boolean
---@param p2 integer
---@param ped integer
function SetEnableArenaPropPhysicsOnPed(entity, toggle, p2, ped) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF538081986E49E9D)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param p3 number
function SetForceObjectThisFrame(x, y, z, p3) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x78857FC65CADB909)  
---This native does not have an official description.
---@param p0 boolean
function SetLocalPlayerCanCollectPortablePickups(p0) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x88EAEC617CD26926)  
---```
---Maximum amount of pickup models that can be disallowed is 30.
---SET_LOCAL_PLAYER_*
---```
---@param modelHash integer | string
---@param toggle boolean
function SetLocalPlayerCanUsePickupsWithThisModel(modelHash, toggle) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0BF3B3BD47D79C08)  
---This native does not have an official description.
---@param modelHash integer | string
---@param p1 integer
function SetMaxNumPortablePickupsCarriedByPlayer(modelHash, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x4D89D607CB3DD1D2)  
---```
---Overrides the climbing/blocking flags of the object, used in the native scripts mostly for "prop_dock_bouy_*"
---```
---@param object integer
---@param toggle boolean
function SetObjectAllowLowLodBuoyancy(object, toggle) end

---@deprecated
SetObjectCanClimbOn = SetObjectAllowLowLodBuoyancy

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x77F33F2CCF64B3AA)  
---Overrides a flag on the object which determines if the object should be avoided by a vehicle in task: CTaskVehicleGoToPointWithAvoidanceAutomobile.
---Tested on vehicles that were created by the vehicle generators.
---@param object integer
---@param toggle boolean
function SetObjectForceVehiclesToAvoid(object, toggle) end

---@deprecated
SetObjectSomething = SetObjectForceVehiclesToAvoid

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x5F048334B4A4E774)  
---Sets color of embedded light source.
---Only appears in am_mp_nightclub.c for the nightclub dancefloor.
---
---Not sure what p1 does, seems to only ever be '1' in scripts.
---
---```
---NativeDB Introduced: v1493
---```
---@param object integer
---@param p1 boolean
---@param r integer
---@param g integer
---@param b integer
---@return any
function SetObjectLightColor(object, p1, r, g, b) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF6DF6E90DE7DF90F)  
---```
---rage::phArchetypeDamp
---p9: Some phBoundGeometry margin value, limited to (0.0, 0.1) exclusive.
---```
---@param object integer
---@param mass number
---@param gravityFactor number
---@param linearC number
---@param linearV number
---@param linearV2 number
---@param angularC number
---@param angularV number
---@param angularV2 number
---@param p9 number
---@param maxAngSpeed number
---@param buoyancyFactor number
function SetObjectPhysicsParams(object, mass, gravityFactor, linearC, linearV, linearV2, angularC, angularV, angularV2, p9, maxAngSpeed, buoyancyFactor) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xDF6CA0330F2E737B)  
---This native does not have an official description.
---@param object integer
---@param duration number
function SetObjectStuntPropDuration(object, duration) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x96EE0EBA0163DF80)  
---Sets the intensity of Speed Boost and Slow Down props.
---
---The corresponding values for Speed Boosts in the Creator are:\
---Weak: `15`\
---Normal: `25`\
---Strong: `35`\
---Extra Strong: `45`\
---Ultra Strong: `100`
---
---For Slow Downs:\
---Weak: `44`\
---Normal: `30`\
---Strong: `16`
---@param object integer
---@param intensity integer
function SetObjectStuntPropSpeedup(object, intensity) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8A7391690F5AFD81)  
---This native does not have an official description.
---@param object integer
---@param targettable boolean
function SetObjectTargettable(object, targettable) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB39F03368DB0CAA2)  
---This native does not have an official description.
---@param object integer
---@param setFlag34 boolean
---@param setFlag35 boolean
function SetObjectTargettableByPlayer(object, setFlag34, setFlag35) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x971DA0055324D033)  
---```cpp
---enum eObjectPaintVariants
---{  
---	Pacific = 0,  
---	Azure = 1,  
---	Nautical = 2,  
---	Continental = 3,  
---	Battleship = 4,  
---	Intrepid = 5,  
---	Uniform = 6,  
---	Classico = 7,  
---	Mediterranean = 8,  
---	Command = 9,  
---	Mariner = 10,  
---	Ruby = 11,  
---	Vintage = 12,  
---	Pristine = 13,  
---	Merchant = 14,  
---	Voyager = 15  
---};  
---```
---@param object integer
---@param textureVariation integer
function SetObjectTextureVariation(object, textureVariation) end

---@deprecated
SetObjectTextureVariant = SetObjectTextureVariation

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x318516E02DE3ECE2)  
---This native does not have an official description.
---@param multiplier number
function SetPickupGenerationRangeMultiplier(multiplier) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x3ED2B83AB2E82799)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function SetPickupHiddenWhenUncollectable(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x78015C9B4B3ECC9D)  
---This native does not have an official description.
---@param pickup integer
---@param duration integer
function SetPickupRegenerationTime(pickup, duration) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1C1B69FAE509BA97)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
function SetPickupUncollectable(p0, p1) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF82D8F1926A02C3D)  
---```
---Hardcoded to not work in multiplayer.  
---Used to lock/unlock doors to interior areas of the game.  
---(Possible) Door Types:  
---pastebin.com/9S2m3qA4  
---Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.  
---Locked means that the heading is locked.    
---p6 is always 0.   
---225 door types, model names and coords found in stripclub.c4:  
---pastebin.com/gywnbzsH  
---get door info: pastebin.com/i14rbekD  
---```
---@param type integer | string
---@param x number
---@param y number
---@param z number
---@param locked boolean
---@param heading number
---@param p6 boolean
function SetStateOfClosestDoorOfType(type, x, y, z, locked, heading, p6) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x5C29F698D404C5E1)  
---```
---Defines the state of a destructible object.
---Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords.
---State 2 == object just spawned
---State 4 == Beginning of the animation
---State 6 == Start animation
---State 9 == End of the animation
---```
---@param object integer
---@param state integer
function SetStateOfRayfireMapObject(object, state) end

---@deprecated
SetDesObjectState = SetStateOfRayfireMapObject

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x53E0DF1A2A3CF0CA)  
---This native does not have an official description.
---@param object integer
---@param p1 any
---@param p2 boolean
function SetTeamPickupObject(object, p1, p2) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF12E33034D887F66)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param modelHash integer | string
---@param textureVariation integer
---@return boolean
function SetTextureVariationOfClosestObjectOfType(x, y, z, radius, modelHash, textureVariation) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xABDABF4E1EDECBFA)  
---```
---NativeDB Introduced: v1365
---```
---@param value boolean
function SetUnkGlobalBoolRelatedToDamage(value) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2FDFF4107B8C1147)  
---```
---Returns true if the object has finished moving.  
---If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  
---See also: https://gtagmodding.com/opcode-database/opcode/034E/
---Has to be looped until it returns true.   
---```
---@param object integer
---@param toX number
---@param toY number
---@param toZ number
---@param speedX number
---@param speedY number
---@param speedZ number
---@param collision boolean
---@return boolean
function SlideObject(object, toX, toY, toZ, speedX, speedY, speedZ, collision) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x616093EC6B139DD9)  
---```
---Disabling/enabling a player from getting pickups. From the scripts:
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
---OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);
---SET_PLAYER_*
---```
---@param player integer
---@param pickupHash integer | string
---@param toggle boolean
function ToggleUsePickupsForPlayer(player, pickupHash, toggle) end

---**`OBJECT` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB252BC036B525623)  
---This native does not have an official description.
---@param object integer
function TrackObjectVisibility(object) end


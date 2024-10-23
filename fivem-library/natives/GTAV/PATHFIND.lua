---@meta

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xFCD5C8E06E502F5A)  
---Creates a navmesh blocking object, vehicles will avoid driving through this area.
---
---Only 32 blocking objects may exist at a given time and must be manually managed. See [`REMOVE_NAVMESH_BLOCKING_OBJECT`](#\_0x46399A7895957C0E) and [`onResourceStop`](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/)
---
---```cpp
---enum eBlockingObjectFlags {
---    // Default Flag
---    BLOCKING_OBJECT_DEFAULT = 0,
---    // Blocking object will block wander paths
---    BLOCKING_OBJECT_WANDERPATH = 1,
---    // Blocking object will block (regular) shortest-paths
---    BLOCKING_OBJECT_SHORTESTPATH = 2,
---    // Blocking object will block flee paths
---    BLOCKING_OBJECT_FLEEPATH = 4,
---    // Blocking object will block all paths
---    BLOCKING_OBJECT_ALLPATHS = 7,
---}
---```
---@param x number
---@param y number
---@param z number
---@param width number
---@param length number
---@param height number
---@param heading number
---@param bPermanent boolean
---@param flags integer
---@return any
function AddNavmeshBlockingObject(x, y, z, width, length, height, heading, bPermanent, flags) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x387EAD7EE42F6685)  
---This native does not have an official description.
---@param x number
---@param y number
---@param radius number
function AddNavmeshRequiredRegion(x, y, radius) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8415D95B194A3AEA)  
---This native does not have an official description.
---@return boolean
function AreAllNavmeshRegionsLoaded() end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF7B79A50B905A30D)  
---This native does not have an official description.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return boolean
function AreNodesLoadedForArea(x1, y1, x2, y2) end

---@deprecated
ArePathNodesLoadedInArea = AreNodesLoadedForArea

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xADD95C7005C4A197)  
---Calculates the travel distance between a set of points.
---Doesn't seem to correlate with distance on gps sometimes.
---
---This function returns the value 100000.0 over long distances, seems to be a failure mode result, potentially occurring when not all path nodes are loaded into pathfind.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return number
function CalculateTravelDistanceBetweenPoints(x1, y1, z1, x2, y2, z2) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2801D0012266DF07)  
---Clears a disabled GPS route area from a certain index previously set using [`SET_GPS_DISABLED_ZONE_AT_INDEX`](#\_0xD0BC1C6FB18EE154).
---@param index integer
function ClearGpsDisabledZoneAtIndex(index) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x4C8872D8CDBE1B8B)  
---Use this if you want to completely disable a large area of navmesh.
---For smaller areas, use [`ADD_NAVMESH_BLOCKING_OBJECT`](#\_0xFCD5C8E06E502F5A) instead.
---@param posMinX number
---@param posMinY number
---@param posMinZ number
---@param posMaxX number
---@param posMaxY number
---@param posMaxZ number
---@param bDisable boolean
function DisableNavmeshInArea(posMinX, posMinY, posMinZ, posMaxX, posMaxY, posMaxZ, bDisable) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0EAEB0DB4B132399)  
---This native does not have an official description.
---@param p0 any
---@return boolean
function DoesNavmeshBlockingObjectExist(p0) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF90125F1F79ECDF8)  
---```
---p3 is 0 in the only game script occurrence (trevor3) but 1 doesn't seem to make a difference
---distToNxJunction seems to be the distance in metres * 10.0f
---direction:
---0 = This happens randomly during the drive for seemingly no reason but if you consider that this native is only used in trevor3, it seems to mean "Next frame, stop whatever's being said and tell the player the direction."
---1 = Route is being calculated or the player is going in the wrong direction
---2 = Please Proceed the Highlighted Route
---3 = In (distToNxJunction) Turn Left
---4 = In (distToNxJunction) Turn Right
---5 = In (distToNxJunction) Keep Straight
---6 = In (distToNxJunction) Turn Sharply To The Left
---7 = In (distToNxJunction) Turn Sharply To The Right
---8 = Route is being recalculated or the navmesh is confusing. This happens randomly during the drive but consistently at {2044.0358, 2996.6116, 44.9717} if you face towards the bar and the route needs you to turn right. In that particular case, it could be a bug with how the turn appears to be 270 deg. CCW instead of "right." Either way, this seems to be the engine saying "I don't know the route right now."
---return value set to 0 always
---```
---@param x number
---@param y number
---@param z number
---@param p3 boolean
---@return integer, integer, number, number
function GenerateDirectionsToCoord(x, y, z, p3) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EABE3B06F58C1BE)  
---```
---Get the closest vehicle node to a given position, unknown1 = 3.0, unknown2 = 0  
---```
---@param x number
---@param y number
---@param z number
---@param unknown1 number
---@param unknown2 integer
---@return boolean, vector3
function GetClosestMajorVehicleNode(x, y, z, unknown1, unknown2) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x132F52BBA570FE92)  
---Finds an edge (node connection to another node) that satisfies the specified criteria.
---@param x number
---@param y number
---@param z number
---@param minimumEdgeLength number
---@param minimumLaneCount integer
---@param onlyMajorRoads boolean
---@return boolean, vector3, vector3, integer, integer, number
function GetClosestRoad(x, y, z, minimumEdgeLength, minimumLaneCount, onlyMajorRoads) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x240A18690AE96513)  
---```
---FYI: When falling through the map (or however you got under it) you will respawn when your player ped's height is <= -200.0 meters (I think you all know this) and when in a vehicle you will actually respawn at the closest vehicle node.
-------------
---Vector3 nodePos;
---GET_CLOSEST_VEHICLE_NODE(x,y,z,&nodePos,...)
---p4 is either 0, 1 or 8. 1 means any path/road. 0 means node in the middle of the closest main (asphalt) road.
---p5, p6 are always the same:
---0x40400000 (3.0), 0
---p5 can also be 100.0 and p6 can be 2.5:
---PATHFIND::GET_CLOSEST_VEHICLE_NODE(a_0, &v_5, v_9, 100.0, 2.5)
---Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.
---The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.
---Starting at 2, every fourth node is under the map, always same coords.
---Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).
---gtaforums.com/topic/843561-pathfind-node-types
---```
---@param x number
---@param y number
---@param z number
---@param nodeType integer
---@param p5 number
---@param p6 number
---@return boolean, vector3
function GetClosestVehicleNode(x, y, z, nodeType, p5, p6) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF071FB798B803B0)  
---```
---p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.  
---p5 is either 1 or 12. 1 means any path/road. 12, 8, 0 means node in the middle of the closest main (asphalt) road.  
---p6 is always 3.0  
---p7 is always 0.  
---Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
---The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
---Starting at 2, every fourth node is under the map, always same coords.  
---Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).  
---gtaforums.com/topic/843561-pathfind-node-types  
---Example of usage, moving vehicle to closest path/road:  
---Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true);  
---Vector3 closestVehicleNodeCoords;   
---float roadHeading;   
---PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0);   
---ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading);  
---ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1);  
---VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);  
---------------------------------------------------------------------  
---C# Example (ins1de) : pastebin.com/fxtMWAHD  
---```
---@param x number
---@param y number
---@param z number
---@param nodeType integer
---@param p6 number
---@param p7 integer
---@return boolean, vector3, number
function GetClosestVehicleNodeWithHeading(x, y, z, nodeType, p6, p7) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x869DAACBBE9FA006)  
---This native does not have an official description.
---@return boolean
function GetGpsBlipRouteFound() end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xBBB45C3CF5C8AA85)  
---This native does not have an official description.
---@return integer
function GetGpsBlipRouteLength() end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x3599D741C9AC6310)  
---```
---Returns CGameWorldHeightMap's minimum Z among all grid nodes that intersect with the specified rectangle.
---```
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return number
function GetHeightmapBottomZForArea(x1, y1, x2, y2) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x336511A34F2E5185)  
---```
---Returns CGameWorldHeightMap's minimum Z value at specified point (grid node).
---```
---@param x number
---@param y number
---@return number
function GetHeightmapBottomZForPosition(x, y) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x8ABE8608576D9CE3)  
---```
---Returns CGameWorldHeightMap's maximum Z among all grid nodes that intersect with the specified rectangle.
---```
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return number
function GetHeightmapTopZForArea(x1, y1, x2, y2) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x29C24BFBED8AB8FB)  
---```
---Returns CGameWorldHeightMap's maximum Z value at specified point (grid node).
---```
---@param x number
---@param y number
---@return number
function GetHeightmapTopZForPosition(x, y) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD3A6A0EF48823A8C)  
---Gets the next zone that has been disabled using SET_GPS_DISABLED_ZONE_AT_INDEX.
---
---```
---NativeDB Removed Parameter 1: int index
---```
---@param index integer
---@return integer
function GetNextGpsDisabledZoneIndex(index) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xE50E52416CCF948B)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param nthClosest integer
---@param unknown1 any
---@param unknown2 any
---@param unknown3 any
---@return boolean, vector3
function GetNthClosestVehicleNode(x, y, z, nthClosest, unknown1, unknown2, unknown3) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x45905BE8654AE067)  
---```
---See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water  
---p10 always equal 0x40400000  
---p11 always equal 0  
---```
---@param x number
---@param y number
---@param z number
---@param desiredX number
---@param desiredY number
---@param desiredZ number
---@param nthClosest integer
---@param nodetype integer
---@param p10 number
---@param p11 any
---@return boolean, vector3, number
function GetNthClosestVehicleNodeFavourDirection(x, y, z, desiredX, desiredY, desiredZ, nthClosest, nodetype, p10, p11) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x22D7275A79FE8215)  
---```
---Returns the id.  
---```
---@param x number
---@param y number
---@param z number
---@param nth integer
---@param nodetype integer
---@param p5 number
---@param p6 number
---@return integer
function GetNthClosestVehicleNodeId(x, y, z, nth, nodetype, p5, p6) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6448050E9C2A7207)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param nthClosest integer
---@param p6 any
---@param p7 number
---@param p8 number
---@return integer, vector3, number
function GetNthClosestVehicleNodeIdWithHeading(x, y, z, nthClosest, p6, p7, p8) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x80CA6A8B6C094CC4)  
---Get the nth closest vehicle node with its heading and total lane count.
---If you need specific forward and backward lane counts use [GET_CLOSEST_ROAD](#\_0x132F52BBA570FE92)
---
---```cpp
---enum eNodeFlags {
---	NONE = 0,
---	INCLUDE_SWITCHED_OFF_NODES = 1,
---	INCLUDE_BOAT_NODES = 2,
---	IGNORE_SLIPLANES = 4,
---	IGNORE_SWITCHED_OFF_DEAD_ENDS = 8,
---}
---```
---@param x number
---@param y number
---@param z number
---@param nthClosest integer
---@param searchFlags integer
---@param zMeasureMult number
---@param zTolerance number
---@return boolean, vector3, number, integer
function GetNthClosestVehicleNodeWithHeading(x, y, z, nthClosest, searchFlags, zMeasureMult, zTolerance) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x01708E8DD3FF8C65)  
---This native does not have an official description.
---@param posMinX number
---@param posMinY number
---@param posMinZ number
---@param posMaxX number
---@param posMaxY number
---@param posMaxZ number
---@return integer
function GetNumNavmeshesExistingInArea(posMinX, posMinY, posMinZ, posMaxX, posMaxY, posMaxZ) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x16F46FB18C8009E4)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param p3 integer
---@return boolean, vector3
function GetPointOnRoadSide(x, y, z, p3) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3162836C28F9DA5)  
---Native to get a position along current player GPS route using supplied slot.
---This native was previously named `GET_GPS_WAYPOINT_ROUTE_END`, but its named changed.
---
---```cpp
---enum eGpsSlotType {
---	GPS_SLOT_WAYPOINT = 0,
---	GPS_SLOT_RADAR_BLIP = 1,
---	GPS_SLOT_DISCRETE = 2
---}
---```
---@param bStartAtPlayerPos boolean
---@param fDistanceAlongRoute number
---@param slotType integer
---@return boolean, vector3
function GetPosAlongGpsTypeRoute(bStartAtPlayerPos, fDistanceAlongRoute, slotType) end

---@deprecated
GetGpsWaypointRouteEnd = GetPosAlongGpsTypeRoute

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x93E0DB8440B73A7D)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param p4 boolean
---@param p5 boolean
---@param p6 boolean
---@return boolean, vector3, integer
function GetRandomVehicleNode(x, y, z, radius, p4, p5, p6) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA0F8A7517A273C05)  
---This native does not have an official description.
---@param x number
---@param y number
---@param z number
---@param heading number
---@return boolean, vector3
function GetRoadBoundaryUsingHeading(x, y, z, heading) end

---@deprecated
GetRoadSidePointWithHeading = GetRoadBoundaryUsingHeading

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB61C8E878A4199CA)  
---```
---Flags are:
---1 = 1 = B02_IsFootpath
---2 = 4 = !B15_InteractionUnk
---4 = 0x20 = !B14_IsInterior
---8 = 0x40 = !B07_IsWater
---16 = 0x200 = B17_IsFlatGround
---When onGround == true outPosition is a position located on the nearest pavement.
---When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.
---In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16.
---16 works for me, 0 crashed the script.
---```
---@param x number
---@param y number
---@param z number
---@param onGround boolean
---@param flags integer
---@return boolean, vector3
function GetSafeCoordForPed(x, y, z, onGround, flags) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x2EB41072B4C1E4C0)  
---```
---Determines the name of the street which is the closest to the given coordinates.
---x,y,z - the coordinates of the street
---streetName - returns a hash to the name of the street the coords are on
---crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road
---Note: the names are returned as hashes, the strings can be returned using the function HUD::GET_STREET_NAME_FROM_HASH_KEY.
---```
---@param x number
---@param y number
---@param z number
---@return integer, integer
function GetStreetNameAtCoord(x, y, z) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA2AE5C478B96E3B6)  
---```
---Returns false for nodes that aren't used for GPS routes.
---Example:
---Nodes in Fort Zancudo and LSIA are false
---```
---@param nodeID integer
---@return boolean
function GetVehicleNodeIsGpsAllowed(nodeID) end

---@deprecated
GetSupportsGpsRouteFlag = GetVehicleNodeIsGpsAllowed

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F5070AA58F69279)  
---```
---Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.
---Normal roads where plenty of Peds spawn will return false
---```
---@param nodeID integer
---@return boolean
function GetVehicleNodeIsSwitchedOff(nodeID) end

---@deprecated
GetIsSlowRoadFlag = GetVehicleNodeIsSwitchedOff

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x703123E5E7D429C2)  
---```
---Calling this with an invalid node id, will crash the game.
---Note that IS_VEHICLE_NODE_ID_VALID simply checks if nodeId is not zero. It does not actually ensure that the id is valid.
---Eg. IS_VEHICLE_NODE_ID_VALID(1) will return true, but will crash when calling GET_VEHICLE_NODE_POSITION().
---```
---@param nodeId integer
---@return vector3
function GetVehicleNodePosition(nodeId) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0568566ACBB5DEDC)  
---Gets the density and flags of the closest node to the specified position.\
---Density is a value between 0 and 15, indicating how busy the road is.
---
---```cpp
---enum eVehicleNodeProperties {
---	OFF_ROAD = 1 << 0,
---	ON_PLAYERS_ROAD =  1 << 1,
---	NO_BIG_VEHICLES = 1 << 2,
---	SWITCHED_OFF = 1 << 3,
---	TUNNEL_OR_INTERIOR = 1 << 4,
---	LEADS_TO_DEAD_END = 1 << 5,
---	HIGHWAY = 1 << 6,
---	JUNCTION = 1 << 7,
---	TRAFFIC_LIGHT = 1 << 8,
---	GIVE_WAY = 1 << 9,
---	WATER = 1 << 10,
---}
---```
---@param x number
---@param y number
---@param z number
---@return boolean, integer, integer
function GetVehicleNodeProperties(x, y, z) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF813C7E63F9062A5)  
---```
---Returns whether navmesh for the region is loaded. The region is a rectangular prism defined by it's top left deepest corner to it's bottom right shallowest corner.  
---If you can re-word this so it makes more sense, please do. I'm horrible with words sometimes...  
---```
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return boolean
function IsNavmeshLoadedInArea(x1, y1, z1, x2, y2, z2) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x705A844002B39DC0)  
---```
---IS_*
---```
---@return boolean
function IsNavmeshRequiredRegionOwnedByAnyThread() end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x125BF4ABFC536B09)  
---```
---Gets a value indicating whether the specified position is on a road.  
---The vehicle parameter is not implemented (ignored).  
---```
---@param x number
---@param y number
---@param z number
---@param vehicle integer
---@return boolean
function IsPointOnRoad(x, y, z, vehicle) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1EAF30FCFBF5AF74)  
---```
---Returns true if the id is non zero.  
---```
---@param vehicleNodeId integer
---@return boolean
function IsVehicleNodeIdValid(vehicleNodeId) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x80E4A6EDDB0BE8D9)  
---```
---This native has been removed in v1180.  
---```
---@param keepInMemory boolean
---@return boolean
function LoadAllPathNodes(keepInMemory) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xAA76052DDA9BFC3E)  
---This native does not have an official description.
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
function N_0xaa76052dda9bfc3e(p0, p1, p2, p3, p4, p5, p6) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x46399A7895957C0E)  
---This native does not have an official description.
---@param p0 any
function RemoveNavmeshBlockingObject(p0) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x916F0A3CDEC3445E)  
---This native does not have an official description.
function RemoveNavmeshRequiredRegions() end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x07FB139B592FA687)  
---```
---Used internally for long range tasks
---```
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return boolean
function RequestPathsPreferAccurateBoundingstruct(x1, y1, x2, y2) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF74B1FFA4A15FBEA)  
---Activates Cayo Perico path nodes if passed `1`. GPS navigation will start working, maybe more stuff will change, not sure. It seems if you try to unload (pass `0`) when close to the island, your game might crash.
---
---```
---NativeDB Introduced: v2189
---```
---@param type integer
function SetAiGlobalPathNodesType(type) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x228E5C6AD4D74BFD)  
---```
---Toggles a global boolean, name is probably a hash collision but describes its functionality.
---```
---@param toggle boolean
function SetAllPathsCacheBoundingstruct(toggle) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0B919E1FB47CC4E0)  
---This native does not have an official description.
---@param multiplier number
function SetAmbientPedRangeMultiplierThisFrame(multiplier) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xDC20483CD3DD5201)  
---This native does not have an official description.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
function SetGpsDisabledZone(x1, y1, z1, x2, y2, z2) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD0BC1C6FB18EE154)  
---Disables the GPS route displayed on the minimap while within a certain zone (area). When in a disabled zone and creating a waypoint, the GPS route is not shown on the minimap until you are outside of the zone. When disabled, the direct distance is shown on minimap opposed to distance to travel. Seems to only work before setting a waypoint.
---
---You can clear the disabled zone with CLEAR_GPS_DISABLED_ZONE_AT_INDEX.
---
---**Setting a waypoint at the same coordinate:**
---
---Disabled Zone: <https://i.imgur.com/P9VUuxM.png>
---
---Enabled Zone (normal): <https://i.imgur.com/BPi24aw.png>
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param index integer
function SetGpsDisabledZoneAtIndex(x1, y1, z1, x2, y2, z2, index) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x72751156E7678833)  
---This native does not have an official description.
---@param toggle boolean
function SetIgnoreNoGpsFlag(toggle) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1FC289A0C3FF470F)  
---```
---See: SET_BLIP_ROUTE
---```
---@param toggle boolean
function SetIgnoreSecondaryRouteNodes(toggle) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xE04B48F2CC926253)  
---```
---NativeDB Added Parameter 7: Any p6
---```
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
function SetPedPathsBackToOriginal(p0, p1, p2, p3, p4, p5) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x34F060F4BF92E018)  
---```
---NativeDB Added Parameter 8: Any p7
---```
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param unknown boolean
function SetPedPathsInArea(x1, y1, z1, x2, y2, z2, unknown) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1EE7063B80FFC77C)  
---```
---missing a last parameter int p6  
---```
---
---```
---NativeDB Added Parameter 7: Any p6
---```
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
function SetRoadsBackToOriginal(p0, p1, p2, p3, p4, p5) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0027501B9F3B407E)  
---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---
---```
---NativeDB Added Parameter 8: Any p7
---
---bool p7 - always 1  
---```
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param width number
function SetRoadsBackToOriginalInAngledArea(x1, y1, z1, x2, y2, z2, width) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1A5AA1208AF5DB59)  
---unknown3 is related to `SEND_SCRIPT_WORLD_STATE_EVENT > CNetworkRoadNodeWorldStateData` in networked environments.
---
---See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param width number
---@param unknown1 boolean
---@param unknown2 boolean
---@param unknown3 boolean
function SetRoadsInAngledArea(x1, y1, z1, x2, y2, z2, width, unknown1, unknown2, unknown3) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xBF1A602B5BA52FEE)  
---When this is set to false, all nodes in the area get disabled.
---
---`GET_VEHICLE_NODE_IS_SWITCHED_OFF` returns true afterwards.
---
---If it's true,
---
---`GET_VEHICLE_NODE_IS_SWITCHED_OFF` returns false.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param nodeEnabled boolean
---@param unknown2 boolean
function SetRoadsInArea(x1, y1, z1, x2, y2, z2, nodeEnabled, unknown2) end

---**`PATHFIND` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x109E99373F290687)  
---This native does not have an official description.
---@param object integer
---@param posX number
---@param posY number
---@param posZ number
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@param heading number
---@param flags integer
function UpdateNavmeshBlockingObject(object, posX, posY, posZ, scaleX, scaleY, scaleZ, heading, flags) end


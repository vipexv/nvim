---@meta

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x341DE7ED1D2A1BFD)  
---This native does not have an official description.
---@param componentHash integer | string
---@param restrictionTagHash integer | string
---@param componentId integer
---@return boolean
function DoesShopPedApparelHaveRestrictionTag(componentHash, restrictionTagHash, componentId) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x33468EDC08E371F6)  
---The Second item in the struct `*(Hash *)(outData + 1)` is the vehicle hash.
---@param dlcVehicleIndex integer
---@return boolean, any
function GetDlcVehicleData(dlcVehicleIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x5549EE11FA22FCF2)  
---This native does not have an official description.
---@param dlcVehicleIndex integer
---@return integer
function GetDlcVehicleFlags(dlcVehicleIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xECC01B7C5763333C)  
---```
---dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()  
---```
---@param dlcVehicleIndex integer
---@return integer
function GetDlcVehicleModel(dlcVehicleIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC098810437312FFF)  
---This native does not have an official description.
---@param hash integer | string
---@return integer
function GetDlcVehicleModLockHash(hash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CF598A2957C2BF8)  
---```
---p0 seems to be the weapon index  
---p1 seems to be the weapon component index  
---struct DlcComponentData{  
---int attachBone;  
---int padding1;  
---int bActiveByDefault;  
---int padding2;  
---int unk;  
---int padding3;  
---int componentHash;  
---int padding4;  
---int unk2;  
---int padding5;  
---int componentCost;  
---int padding6;  
---char nameLabel[64];  
---char descLabel[64];  
---};  
---```
---@param dlcWeaponIndex integer
---@param dlcWeapCompIndex integer
---@return boolean, integer
function GetDlcWeaponComponentData(dlcWeaponIndex, dlcWeapCompIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x31D5E073B6F93CDC)  
---Same as GET_DLC_WEAPON_COMPONENT_DATA but only works for DLC components that are available in SP.
---
---```
---NativeDB Introduced: v2060
---```
---@param dlcWeaponIndex integer
---@param dlcWeapCompIndex integer
---@return boolean, integer
function GetDlcWeaponComponentDataSp(dlcWeaponIndex, dlcWeapCompIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x79923CD21BECE14E)  
---```
---dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.  
---struct DlcWeaponData  
---{  
---int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this  
---int padding1;  
---int weaponHash;  
---int padding2;  
---int unk;  
---int padding3;  
---int weaponCost;  
---int padding4;  
---int ammoCost;  
---int padding5;  
---int ammoType;  
---int padding6;  
---int defaultClipSize;  
---int padding7;  
---char nameLabel[64];  
---char descLabel[64];  
---char desc2Label[64]; // usually "the" + name  
---char upperCaseNameLabel[64];  
---};  
---```
---@param dlcWeaponIndex integer
---@return boolean, integer
function GetDlcWeaponData(dlcWeaponIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x310836EE7129BA33)  
---Same as GET_DLC_WEAPON_DATA but only works for DLC weapons that are available in SP.
---
---```
---NativeDB Introduced: v2060
---```
---@param dlcWeaponIndex integer
---@return boolean, integer
function GetDlcWeaponDataSp(dlcWeaponIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6C93ED8C2F74859B)  
---This native does not have an official description.
---@param componentHash integer | string
---@param forcedComponentIndex integer
---@return integer, integer, integer
function GetForcedComponent(componentHash, forcedComponentIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xE1CA84EBF72E691D)  
---This native does not have an official description.
---@param componentHash integer | string
---@param forcedPropIndex integer
---@return integer, integer, integer
function GetForcedProp(componentHash, forcedPropIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0368B3A838070348)  
---This native does not have an official description.
---@param entity integer
---@param componentId integer
---@param drawableVariant integer
---@param textureVariant integer
---@return integer
function GetHashNameForComponent(entity, componentId, drawableVariant, textureVariant) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D6160275CAEC8DD)  
---This native does not have an official description.
---@param entity integer
---@param componentId integer
---@param propIndex integer
---@param propTextureIndex integer
---@return integer
function GetHashNameForProp(entity, componentId, propIndex, propTextureIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA7A866D21CD2329B)  
---Returns the total number of DLC vehicles.
---@return integer
function GetNumDlcVehicles() end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x405425358A7D61FE)  
---```
---Returns the total number of DLC weapon components.
---```
---@param dlcWeaponIndex integer
---@return integer
function GetNumDlcWeaponComponents(dlcWeaponIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xAD2A7A6DFF55841B)  
---Returns the total number of DLC weapon components that are available in SP.
---
---```
---NativeDB Introduced: v2060
---```
---@param dlcWeaponIndex integer
---@return integer
function GetNumDlcWeaponComponentsSp(dlcWeaponIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xEE47635F352DA367)  
---```
---Returns the total number of DLC weapons.
---```
---@return integer
function GetNumDlcWeapons() end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x4160B65AE085B5A9)  
---Returns the total number of DLC weapons that are available in SP (availableInSP field in shop_weapon.meta).
---
---```
---NativeDB Introduced: v2060
---```
---@return integer
function GetNumDlcWeaponsSp() end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x278F76C3B0A8F109)  
---```
---Character types:
---0 = Michael,
---1 = Franklin,
---2 = Trevor,
---3 = MPMale,
---4 = MPFemale
---```
---@param character integer
---@return integer
function GetNumTattooShopDlcItems(character) end

---@deprecated
GetNumDecorations = GetNumTattooShopDlcItems

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC6B9DB42C04DD8C3)  
---```
---Returns number of possible values of the forcedComponentIndex argument of GET_FORCED_COMPONENT.
---```
---@param componentHash integer | string
---@return integer
function GetShopPedApparelForcedComponentCount(componentHash) end

---@deprecated
GetNumForcedComponents = GetShopPedApparelForcedComponentCount

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x017568A8182D98A6)  
---```
---Returns number of possible values of the forcedPropIndex argument of GET_FORCED_PROP.
---```
---@param componentHash integer | string
---@return integer
function GetShopPedApparelForcedPropCount(componentHash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xC17AD0E5752BECDA)  
---This native does not have an official description.
---@param componentHash integer | string
---@return integer
function GetShopPedApparelVariantComponentCount(componentHash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD40AAC51E8E4C663)  
---This native does not have an official description.
---@param propHash integer | string
---@return integer
function GetShopPedApparelVariantPropCount(propHash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x74C0E2A57EC66760)  
---```
---More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
---```
---@param componentHash integer | string
---@return any
function GetShopPedComponent(componentHash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xB7952076E444979D)  
---This native does not have an official description.
---@param p0 any
---@return any
function GetShopPedOutfit(p0) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x19F2A026EDF0013F)  
---This native does not have an official description.
---@param outfit integer | string
---@param slot integer
---@return boolean, any
function GetShopPedOutfitComponentVariant(outfit, slot) end

---@deprecated
GetPropFromOutfit = GetShopPedOutfitComponentVariant

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x073CA26B079F956E)  
---This native does not have an official description.
---@param p0 any
---@return integer
function GetShopPedOutfitLocate(p0) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9F9C2E0FDE11CBB)  
---This native does not have an official description.
---@param outfitHash integer | string
---@param variantIndex integer
---@return boolean, any
function GetShopPedOutfitPropVariant(outfitHash, variantIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x5D5CAFF661DDF6FC)  
---This native does not have an official description.
---@param componentHash integer | string
---@return any
function GetShopPedProp(componentHash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x249E310B2D920699)  
---This native does not have an official description.
---@param componentId integer
---@return integer
function GetShopPedQueryComponent(componentId) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6D793F03A631FE56)  
---```
---struct Outfit_s  
---{  
---	int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece;  
---	int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,   
---		armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture;  
---};  
---```
---@param outfitIndex integer
---@return any
function GetShopPedQueryOutfit(outfitIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xDE44A00999B2837D)  
---This native does not have an official description.
---@param componentId integer
---@return any
function GetShopPedQueryProp(componentId) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xFF56381874F82086)  
---Returns data that adheres to the tattoo shop item data that is used in shop_tattoo.meta
---
---Character types:
---
---```cpp
---enum eTattooFaction
---{
---	TATTOO_SP_MICHAEL = 0,
---	TATTOO_SP_FRANKLIN = 1,
---	TATTOO_SP_TREVOR = 2,
---	TATTOO_MP_FM = 3,
---	TATTOO_MP_FM_F = 4
---}
---```
---
---Returned struct properties:
---
---```cpp
---struct sTattooShopItemValues
---{
---	// Lock hash, used with IS_CONTENT_ITEM_LOCKED
---	int LockHash;
---	// Unique ID of this slot. It can also be 0.
---	int Index;
---	// Collection hash of this tattoo
---	int CollectionHash;
---	// Preset hash of this tattoo
---	int PresetHash;
---	// Cost of this tattoo in shops.
---	int Cost;
---	// Secondary placement of this tattoo.
---	int eFacing;
---	// Location of this tattoo on the body (for example, for torso there would be chest upper, stomach, etc)
---	int UpdateGroup;
---	// This tattoo's name in the form of a text label.
---	const char* NameTextLabel;
---};
---```
---@param characterType integer
---@param decorationIndex integer
---@return boolean, any
function GetTattooShopDlcItemData(characterType, decorationIndex) end

---@deprecated
GetTattooCollectionData = GetTattooShopDlcItemData

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x10144267DD22866C)  
---```
---NativeDB Introduced: v2189
---```
---@param character integer
---@param collection integer
---@param preset integer
---@return integer
function GetTattooShopDlcItemIndex(character, collection, preset) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6E11F282F11863B6)  
---This native does not have an official description.
---@param componentHash integer | string
---@param variantComponentIndex integer
---@return integer, integer, integer
function GetVariantComponent(componentHash, variantComponentIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD81B7F27BC773E66)  
---This native does not have an official description.
---@param componentHash integer | string
---@param variantPropIndex integer
---@return integer, integer, integer
function GetVariantProp(componentHash, variantPropIndex) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x1E8C308FD312C036)  
---This native does not have an official description.
---@return integer
function InitShopPedComponent() end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xEB0A2B758F7B850F)  
---This native does not have an official description.
---@return integer
function InitShopPedProp() end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xD4D7B033C3AA243C)  
---This native does not have an official description.
---@param itemHash integer | string
---@return boolean
function IsContentItemLocked(itemHash) end

---@deprecated
IsOutfitEmpty = IsContentItemLocked
---@deprecated
IsDlcDataEmpty = IsContentItemLocked

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0564B9FF9631B82C)  
---This native does not have an official description.
---@param hash integer | string
---@return boolean
function IsDlcVehicleMod(hash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6BEDF5769AC2DC07)  
---```
---From fm_deathmatch_creator and fm_race_creator:
---
---FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
---FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
---
---NativeDB Introduced: v1604
---```
---@param hash integer | string
function LoadContentChangeSetGroup(hash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6CEBE002E58DEE97)  
---Returns some sort of index/offset for props.
---Needs \_GET_NUM_PROPS_FROM_OUTFIT to be called with p3 = true and componentId = -1 first, returns -1 otherwise.
---
---```
---NativeDB Introduced: v2189
---```
---@param componentHash integer | string
---@return integer
function N_0x6cebe002e58dee97(componentHash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x96E2929292A4DB77)  
---Returns some sort of index/offset for components.
---Needs \_GET_NUM_PROPS_FROM_OUTFIT to be called with p3 = false and componentId with the drawable's component slot first, returns -1 otherwise.
---
---```
---NativeDB Introduced: v2189
---```
---@param componentHash integer | string
---@return integer
function N_0x96e2929292a4db77(componentHash) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x50F457823CE6EB5F)  
---This native does not have an official description.
---@param p0 integer
---@param p1 integer
---@param p2 integer
---@param p3 integer
---@return integer
function SetupShopPedApparelQuery(p0, p1, p2, p3) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x9BDF59818B1E38C1)  
---```
---character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.
---componentId is between 0 and 11 and corresponds to the usual component slots.
---p1 could be the outfit number; unsure.
---p2 is usually -1; unknown function.
---p3 appears to be for selecting between clothes and props; false is used with components/clothes, true is used with props.
---p4 is usually -1; unknown function.
---componentId is -1 when p3 is true in decompiled scripts.
---```
---@param character integer
---@param p1 integer
---@param p2 integer
---@param p3 boolean
---@param p4 integer
---@param componentId integer
---@return integer
function SetupShopPedApparelQueryTu(character, p1, p2, p3, p4, componentId) end

---@deprecated
GetNumPropsFromOutfit = SetupShopPedApparelQueryTu

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xF3FBE2D50A6A8C28)  
---```
---characters
---0: Michael
---1: Franklin
---2: Trevor
---3: MPMale
---4: MPFemale
---```
---@param character integer
---@param p1 boolean
---@return integer
function SetupShopPedOutfitQuery(character, p1) end

---**`FILES` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x3C1978285B036B25)  
---```
---From fm_deathmatch_creator and fm_race_creator:
---
---FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
---FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
---
---NativeDB Introduced: v1604
---```
---@param hash integer | string
function UnloadContentChangeSetGroup(hash) end


---@meta

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x6452B1D357D81742)  
---p1: WARDROBE, KIT_CAMP, CHARACTER, KIT_MOONSHINER_PROPERTY
---Returns slot hash
---@param item integer | string
---@param p1 integer | string
---@return integer
function GetDefaultItemSlotInfo(item, p1) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xADDD1E7C0ECF7D95)  
---This native does not have an official description.
---@param inventoryId integer
---@param eRoleMaxLevel integer | string
---@return integer
function GetItemRoleMaxLevelCount(inventoryId, eRoleMaxLevel) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE80E50BEE276A54A)  
---This native does not have an official description.
---@param provision integer | string
---@param slotId integer | string
---@return integer
function GetItemSlotMaxCount(provision, slotId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xCB5D11F9508A928D)  
---inventoryItemSlotHash: https://pastebin.com/P6fyr3vr
---@param inventoryId integer
---@param item integer | string
---@param inventoryItemSlot integer | string
---@param p5 integer
---@param addReason integer | string
---@return boolean, any, any
function InventoryAddItemWithGuid(inventoryId, item, inventoryItemSlot, p5, addReason) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x75CFAC49301E134E)  
---Applies weapon stats to the 'CatalogItemInspection' stats entry id.
---p0: value returned by 0x9D21B185ABC2DBC5
---_INVENTORY_GET*
---@param databindingEntryId integer | string
---@param p1 boolean
---@param ped integer
function InventoryApplyWeaponStatsToEntry(databindingEntryId, p1, ped) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x0FBBFFC891A97C81)  
---inventoryId: see _INVENTORY_GET_PED_INVENTORY_ID
---@param inventoryId integer
---@return boolean
function InventoryAreLocalChangesAllowed(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x4C543D5DFCD2DAFD)  
---This native does not have an official description.
---@return boolean, any, any
function InventoryCompareGuids() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xC04F47D488EF9EBA)  
---This native does not have an official description.
---@param inventoryId integer
---@param inventoryIdCloned integer
---@param p3 any
---@return any
function InventoryCopyItemToInventory(inventoryId, inventoryIdCloned, p3) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x3112ADB9D5F3426B)  
---This native does not have an official description.
---@param p1 boolean
---@return any
function InventoryCopyItemToMissionInventory(p1) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x644CCB76A76CFBD6)  
---This native does not have an official description.
---@param p0 boolean
---@param p1 boolean
---@param bCopySatchelItems boolean
---@param bCopyEmotes boolean
---@param bCopyHorse boolean
---@param p5 boolean
function InventoryCopyMpInventoryToMissionInventory(p0, p1, bCopySatchelItems, bCopyEmotes, bCopyHorse, p5) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x9D21B185ABC2DBC4)  
---data: return value of DATABINDING::_DATABINDING_ADD_DATA_CONTAINER(..., 'CatalogItemInspection');
---name: effects
---p2, p3: false
---
---Returns databindingEntryId of 'CatalogItemInspection' container to be used with 0x75CFAC49301E134F (p0)
---@param data integer
---@param name string
---@param p2 boolean
---@param p3 boolean
---@return integer
function InventoryCreateCatalogItemInspectionEffectsEntry(data, name, p2, p3) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x9D21B185ABC2DBC5)  
---data: return value of DATABINDING::_DATABINDING_ADD_DATA_CONTAINER(..., 'CatalogItemInspection');
---name: stats, compareStats
---p2: 0
---p3: -1
---
---Returns databindingEntryId of 'CatalogItemInspection' container to be used with 0x75CFAC49301E134E (p0)
---@param data integer
---@param name string
---@param p2 integer
---@param p3 integer
---@return integer
function InventoryCreateCatalogItemInspectionStatsEntry(data, name, p2, p3) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x80D78BDC9D88EF07)  
---filterName (collections): "ALL", "ALL SATCHEL", "ALL HORSES", "ALL COACHES", "ALL MOUNTS", "ALL CLOTHING", "ALL WEAPONS", "ALL SATCHEL EXCLUDING CLOTHING", "ALL EXCLUDING CLOTHING"
---slotId: -1591664384
---p3: outCollectionSize (?)
---Returns collectionId
---@param inventoryId integer
---@param filterName string
---@param slotId integer | string
---@return integer, integer
function InventoryCreateItemCollection(inventoryId, filterName, slotId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x97A3646645727F42)  
---Returns collectionId
---@return integer, integer
function InventoryCreateItemCollection_2() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x640F890C3E5A3FFD)  
---This native does not have an official description.
---@param inventoryId integer
---@return integer, any, integer
function InventoryCreateItemCollectionWithFilter(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xBB7F968675B34B0C)  
---p1: 32
---Returns collectionId
---@param inventoryId integer
---@param p1 integer
---@return integer, integer
function InventoryCreateSortedCollection(inventoryId, p1) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x766315A564594401)  
---Example: (1, WEAPON_REVOLVER_CATTLEMAN, 0) - disables cattleman revolver on weapon wheel
---@param inventoryId integer
---@param item integer | string
---@param gtxReason integer | string
function InventoryDisableItem(inventoryId, item, gtxReason) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE1F389F03DC83673)  
---This native does not have an official description.
function InventoryDisableMissionInventoryPickups() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE3A46370F70F3607)  
---Params: p1 = 0
---@param inventoryId integer
---@param p1 any
function InventoryDisableWeapons(inventoryId, p1) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x88B58B83A43A8CAB)  
---This native does not have an official description.
---@param inventoryId integer
---@param item integer | string
---@return boolean, any
function InventoryDoesItemOwnEquipment(inventoryId, item) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x6A564540FAC12211)  
---This native does not have an official description.
---@param inventoryId integer
---@param item integer | string
function InventoryEnableItem(inventoryId, item) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xD5D72F1624F3BA7C)  
---This native does not have an official description.
---@param inventoryId integer
function InventoryEnableWeapons(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x734311E2852760D0)  
---This native does not have an official description.
---@param inventoryId integer
---@param bEquipped boolean
---@return boolean, any
function InventoryEquipItemWithGuid(inventoryId, bEquipped) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x780C5B9AE2819807)  
---This native does not have an official description.
---@param item integer | string
---@param slotId integer | string
---@return boolean
function InventoryFitsSlotId(item, slotId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE843D21A8E2498AA)  
---This native does not have an official description.
---@param inventoryId integer
---@return integer, any
function InventoryGetChildrenCount(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x033EE4B89F3AC545)  
---This native does not have an official description.
---@param inventoryId integer
---@param slotId integer | string
---@return integer, any
function InventoryGetChildrenInSlotCount(inventoryId, slotId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x025A1B1FB03FBF61)  
---This native does not have an official description.
---@param inventoryId integer
---@param p3 integer
---@param p4 integer
---@return boolean, any, any
function InventoryGetFullInventoryItemData(inventoryId, p3, p4) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x886DFD3E185C8A89)  
---This native does not have an official description.
---@param inventoryId integer
---@param p2 integer | string
---@param slotId integer | string
---@return boolean, any, any
function InventoryGetGuidFromItemid(inventoryId, p2, slotId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x13D234A2A3F66E63)  
---Returns a unique inventory ID for this ped.
---For the local player ped, it is an eInventories value.
---For other peds, it is the inventory address casted to unsigned int.
---
---enum eInventories
---{
---	INVENTORY_INVALID,
---	INVENTORY_SP_PLAYER,
---	INVENTORY_MP_PLAYER,
---	INVENTORY_MP_MISSION,
---	INVENTORY_SECOND_SCREEN,
---	INVENTORY_SP_BACKUP,
---	INVENTORY_SP_SNAPSHOT,
---	INVENTORY_0xDE2AE452,
---	INVENTORY_0x399D9B3A,
---	INVENTORY_0x4BD43FA7,
---	INVENTORY_0x9529D251,
---	INVENTORY_0xA75776AC,
---	INVENTORY_MAX_ID = 11,
---	INVENTORY_IDS_COUNT
---};
---@param ped integer
---@return integer
function InventoryGetInventoryIdFromPed(ped) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x9700E8EFC4AB9089)  
---This native does not have an official description.
---@param inventoryId integer
---@param p3 boolean
---@return boolean, any, any
function InventoryGetInventoryItem(inventoryId, p3) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xCD9A485F2B383B44)  
---This native does not have an official description.
---@param inventoryId integer
---@param childIndex any
---@return boolean, any, any
function InventoryGetInventoryItemChild(inventoryId, childIndex) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xC97E0D2302382211)  
---This native does not have an official description.
---@param inventoryId integer
---@param p2 boolean
---@return integer, any
function InventoryGetInventoryItemCountWithGuid(inventoryId, p2) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE787F05DFC977BDE)  
---This native does not have an official description.
---@param inventoryId integer
---@param eInventoryItem integer | string
---@param p2 boolean
---@return integer
function InventoryGetInventoryItemCountWithItemid(inventoryId, eInventoryItem, p2) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xA4550FE9C512E3DD)  
---This native does not have an official description.
---@param item integer | string
---@return integer
function InventoryGetInventoryItemDescriptionHash(item) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xBE012571B25F5ACA)  
---This native does not have an official description.
---@param inventoryId integer
---@param slotId integer | string
---@param p3 integer
---@return integer, any, any
function InventoryGetInventoryItemEquippedInSlot(inventoryId, slotId, p3) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x22E590F108289A9D)  
---This native does not have an official description.
---@param inventoryId integer
---@param slotId integer | string
---@return boolean, any, any
function InventoryGetInventoryItemEquippedInSlotByRef(inventoryId, slotId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xB991FE166FAF84FD)  
---This native does not have an official description.
---@param p0 integer | string
---@param p2 integer
---@return boolean, any
function InventoryGetInventoryItemFitSlot(p0, p2) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xF9933164965533B7)  
---This native does not have an official description.
---@param inventoryId integer
---@return boolean, any
function InventoryGetInventoryItemHidden(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x0C093C1787F18519)  
---This native does not have an official description.
---@param item integer | string
---@return boolean, any
function InventoryGetInventoryItemInspectionInfo(item) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x70E3A884ED000A01)  
---This native does not have an official description.
---@param inventoryId integer
---@return boolean, any
function InventoryGetInventoryItemInUse(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x4AEF1FB5B9011D75)  
---This native does not have an official description.
---@param item integer | string
---@return boolean
function InventoryGetInventoryItemIsAnimalPelt(item) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x2E1CDC1FF3B8473E)  
---soundType: see 0x2BAE4880DCDD560B
---Returns item Hash to be used with _IS_SCRIPTED_AUDIO_CUSTOM and _PLAY_SOUND_FROM_ITEM (p0)
---@param item integer | string
---@param soundType integer
---@return integer
function InventoryGetInventoryItemSound(item, soundType) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xAB5F12746A099A0E)  
---Returns CopyID
---@param inventoryId integer
---@return integer, any
function InventoryGetInventoryItemWeaponCopyId(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x2BAE4880DCDD560B)  
---soundType: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/CItemInfoSoundsInterface__sSoundsInfo__eSoundType
---@param item integer | string
---@param soundType integer
---@return boolean
function InventoryGetIsInventoryItemSoundValid(item, soundType) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x4A606C17276E1BCC)  
---This native does not have an official description.
---@return integer, any
function InventoryGetItemExpiryTime() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x82FA24C3D3FCD9B7)  
---collectionId is < outCollectionSize
---@param collectionId integer
---@param itemIndex integer
---@return boolean, any
function InventoryGetItemFromCollectionIndex(collectionId, itemIndex) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xB881CA836CC4B6D4)  
---This native does not have an official description.
---@return boolean, any
function InventoryIsGuidValid() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x3D10D7179D7034AF)  
---Alternative Name: _INVENTORY_IS_ITEM_DISABLED
---@param inventoryId integer
---@param item integer | string
---@param p2 boolean
---@return boolean
function InventoryIsInventoryItemEquipped(inventoryId, item, p2) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x245D07651B1D183B)  
---flag: https://github.com/Halen84/RDR3-Native-Flags-And-Enums/tree/main/ItemDatabaseItemFlags
---2097152 (is item read?), 8388608 (is item sent/received/mailable?), 16777216 (is item consumable?)
---@param item integer | string
---@param flag integer
---@return boolean
function InventoryIsInventoryItemFlagEnabled(item, flag) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x0137C77A2EC64536)  
---This native does not have an official description.
---@return boolean, any
function InventoryIsItemExpired() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xFC7563F482781A3D)  
---This native does not have an official description.
---@return boolean
function InventoryIsPlayerInventoryMirroringTransactions() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x7C7E4AB748EA3B07)  
---This native does not have an official description.
---@return boolean
function InventoryIsUsingBackupInventory() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xDCCAA7C3BFD88862)  
---guid1: old parent GUID
---guid2: new parent GUID
---guid3: new item GUID (out param)
---@param inventoryId integer
---@param slotId integer | string
---@param quantity integer
---@return boolean, any, any, any
function InventoryMoveInventoryItem(inventoryId, slotId, quantity) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x42A2F33A1942E865)  
---Max num of collections is 5, so release your unused ones.
---@param collectionId integer
---@return boolean
function InventoryReleaseItemCollection(collectionId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x5D6182F3BCE1333B)  
---removeReason: REMOVE_REASON_DEFAULT (eRemoveItemReason)
---Example: INVENTORY::_0x5D6182F3BCE1333B(1, joaat("REMOVE_REASON_DEFAULT")); -> clears weapon wheel
---Only used in R* SP Scripts
---@param inventoryId integer
---@param removeReason integer | string
---@return boolean
function InventoryRemoveInventoryItems(inventoryId, removeReason) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x3E4E811480B3AE79)  
---This native does not have an official description.
---@param inventoryId integer
---@param quantity integer
---@param removeReason integer | string
---@return boolean, any
function InventoryRemoveInventoryItemWithGuid(inventoryId, quantity, removeReason) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xB4158C8C9A3B5DCE)  
---This native does not have an official description.
---@param inventoryId integer
---@param item integer | string
---@param quantity integer
---@param removeReason integer | string
---@return boolean
function InventoryRemoveInventoryItemWithItemid(inventoryId, item, quantity, removeReason) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x9A113C660AEA3832)  
---Used with CClothingItem
---@param inventoryId integer
---@param hidden boolean
---@return any
function InventorySetInventoryItemHidden(inventoryId, hidden) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xD740F11FBC8AEF43)  
---Used with CSatchelItem, R* Script usage: fisihing_core
---@param inventoryId integer
---@param hidden boolean
---@return any
function InventorySetInventoryItemHidden_2(inventoryId, hidden) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x227522FD59DDB7E8)  
---This native does not have an official description.
---@param inventoryId integer
---@param enabled boolean
---@return boolean, any
function InventorySetInventoryItemInspectionEnabled(inventoryId, enabled) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x65A5F70F4A292EBE)  
---Only works on CClothingItem
---@param inventoryId integer
---@param inUse boolean
---@return any
function InventorySetInventoryItemInUse(inventoryId, inUse) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x6D2F987736A42D4C)  
---OWE_INVALID = -1,
---OWE_GOOD_IN_HOT
---OWE_GOOD_IN_NONE
---OWE_GOOD_IN_COLD
---OWE_GOOD_IN_ALL
---@param inventoryId integer
---@param weatherEffectiveness integer
---@return any
function InventorySetInventoryItemWeatherEffectiveness(inventoryId, weatherEffectiveness) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xF2753D691BCDA314)  
---This native does not have an official description.
---@param inventoryId integer
---@return boolean, any, any
function InventorySwapInventoryItem(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xD80A8854DB5CFBA5)  
---Getter: _INVENTORY_GET_FULL_INVENTORY_ITEM_DATA
---@param inventoryId integer
---@param p3 integer
---@return boolean, any, any
function InventoryUpdateInventoryItem(inventoryId, p3) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE36D4A38D28D9CFB)  
---Only used in R* SP Scripts
---@param p0 boolean
function InventoryUseBackupInventory(p0) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xA6AA9F56BC6CFF58)  
---This native does not have an official description.
---@param enable boolean
---@param mirrorTransactions boolean
function InventoryUseMissionInventory(enable, mirrorTransactions) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x46743BBFEDBC859E)  
---eInventoryItem: CLOTHING_FANCY_SUIT, CLOTHING_GUNSLINGER_OUTFIT, etc.
---Only used in R* SP Scripts
---@param inventoryId integer
---@param eInventoryItem integer | string
---@param p2 boolean
function InventoryUseSatchelItem(inventoryId, eInventoryItem, p2) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x0349404A22736740)  
---Params: p0 is only 0 or 1
---Only used in R* SP Scripts
---@param p0 boolean
---@param inventoryId integer
---@return any
function N_0x0349404a22736740(p0, inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x112BCA290D2EB53C)  
---Only used in R* SP Scripts
---@param inventoryId integer
---@param p1 integer | string
---@return boolean, integer, integer, integer, integer, integer, integer
function N_0x112bca290d2eb53c(inventoryId, p1) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x46DB71883EE9D5AF)  
---Returns databindingEntryId to be used with 0x951847CEF3D829FF (p0)
---@param data any
---@param stats string
---@param ped integer
---@return integer, any
function N_0x46db71883ee9d5af(data, stats, ped) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x6862E4D93F64CF01)  
---Only used in R* SP Scripts
---@param inventoryId integer
---@param p2 integer | string
---@return boolean, any, any
function N_0x6862e4d93f64cf01(inventoryId, p2) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x6968CE7AC32F6788)  
---Only used in R* SP Scripts
---@param inventoryId integer
function N_0x6968ce7ac32f6788(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x75CFAC49301E134F)  
---p0: value returned by 0x9D21B185ABC2DBC4
---p1, p2: false
---@param databindingEntryId integer | string
---@param p1 boolean
---@param p2 boolean
function N_0x75cfac49301e134f(databindingEntryId, p1, p2) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x951847CEF3D829FF)  
---p0: value returned by 0x46DB71883EE9D5AF
---@param p0 any
---@param ped integer
---@return any
function N_0x951847cef3d829ff(p0, ped) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x9AC53CB6907B4428)  
---p1 (out) and p2 (in) are both script arrays?
---item: can be a component item, see SHOP_CATALOG_BUILD_LIST_OF_WEAPON_COMPONENTS
---@param item integer | string
---@return boolean, any, any
function N_0x9ac53cb6907b4428(item) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x9B4E793B1CB6550A)  
---Used in function SET_SHOP_BEING_ROBBED and many other shop related scripts and functions.
---INVENTORY_A*
function N_0x9b4e793b1cb6550a() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x9E58207B194488AC)  
---This native does not have an official description.
---@param ped integer
---@param p1 integer
function N_0x9e58207b194488ac(ped, p1) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xB1DD74A1F5536622)  
---This native does not have an official description.
---@param inventoryId integer
---@return boolean, any
function N_0xb1dd74a1f5536622(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xD08685BA892DBFAB)  
---Params: p3 returns an int between 0 and 20 (?)
---Only used in R* SP Scripts
---@param inventoryId integer
---@return boolean, any, integer, integer
function N_0xd08685ba892dbfab(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xE1F45A67A9F0DCBC)  
---Only used in R* SP Scripts
---@param inventoryId integer
function N_0xe1f45a67a9f0dcbc(inventoryId) end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xF666EF30F4F0AC4E)  
---This native does not have an official description.
---@return any
function SetCarriableCarryActionPromptOverride() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0xFD41D1D4350F6413)  
---This native does not have an official description.
---@return any
function SetItemPromptInfoRequest() end

---**`INVENTORY` `client`**  
---[Native Documentation](https://alloc8or.re/rdr3/nativedb/?n=0x597F571DDEE3FFAC)  
---This native has no functionality.
---@param toggle boolean
function SetUseMissionInventory(toggle) end


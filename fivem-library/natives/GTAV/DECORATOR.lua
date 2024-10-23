---@meta

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x05661B80A8C9165F)  
---```
---Returns whether or not the specified property is set for the entity.  
---```
---@param entity integer
---@param propertyName string
---@return boolean
function DecorExistOn(entity, propertyName) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xDACE671663F2F5DB)  
---This native does not have an official description.
---@param entity integer
---@param propertyName string
---@return boolean
function DecorGetBool(entity, propertyName) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6524A2F114706F43)  
---This native does not have an official description.
---@param entity integer
---@param propertyName string
---@return number
function DecorGetFloat(entity, propertyName) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA06C969B02A97298)  
---This native does not have an official description.
---@param entity integer
---@param propertyName string
---@return integer
function DecorGetInt(entity, propertyName) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x4F14F9F870D6FBC8)  
---This native does not have an official description.
---@param propertyName string
---@param type integer
---@return boolean
function DecorIsRegisteredAsType(propertyName, type) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x9FD90732F56403CE)  
---```cpp
---enum eDecorType
---{
---    DECOR_TYPE_FLOAT = 1,
---    DECOR_TYPE_BOOL = 2,
---    DECOR_TYPE_INT = 3,
---    DECOR_TYPE_STRING = 4,
---    DECOR_TYPE_TIME = 5
---};
---```
---@param propertyName string
---@param type integer
function DecorRegister(propertyName, type) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0xA9D14EEA259F9248)  
---```
---Called after all decorator type initializations.  
---```
function DecorRegisterLock() end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x00EE9F297C738720)  
---This native does not have an official description.
---@param entity integer
---@param propertyName string
---@return boolean
function DecorRemove(entity, propertyName) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x6B1E8E2ED1335B71)  
---```
---This function sets metadata of type bool to specified entity.  
---```
---@param entity integer
---@param propertyName string
---@param value boolean
---@return boolean
function DecorSetBool(entity, propertyName, value) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x211AB1DD8D0F363A)  
---This native does not have an official description.
---@param entity integer
---@param propertyName string
---@param value number
---@return boolean
function DecorSetFloat(entity, propertyName, value) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x0CE3AA5E1CA19E10)  
---```
---Sets property to int.  
---```
---@param entity integer
---@param propertyName string
---@param value integer
---@return boolean
function DecorSetInt(entity, propertyName, value) end

---**`DECORATOR` `client`**  
---[Native Documentation](https://docs.fivem.net/natives/?_0x95AED7B8E39ECAA4)  
---This native does not have an official description.
---@param entity integer
---@param propertyName string
---@param timestamp integer
---@return boolean
function DecorSetTime(entity, propertyName, timestamp) end


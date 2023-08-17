@echo off

@REM
@REM  Coleta informações do ambiente (inventário): sistema operacional, 
@REM  hardware (cpu, mem, nic, etc). 
@REM 
@REM  Plataforma...: Windows
@REM  PreReqs......: ser admin local

echo ----------------------------------------- wmic MemoryChip
wmic MemoryChip get Manufacturer
wmic MemoryChip get MemoryType 
wmic MemoryChip get Model 
wmic MemoryChip get Name 
wmic MemoryChip get OtherIdentifyingInfo 
wmic MemoryChip get PartNumber 
wmic MemoryChip get SKU
wmic MemoryChip get SerialNumber
wmic MemoryChip get Tag

echo ----------------------------------------- wmic OS
wmic OS get CSName
wmic OS get Name
wmic OS get CSDVersion
wmic OS get CountryCode
wmic OS get BuildNumber
wmic OS get BuildType
wmic OS get Manufacturer
wmic OS get OSLanguage
wmic OS get OSProductSuite
wmic OS get OSType
wmic OS get RegisteredUser
wmic OS get SerialNumber
wmic OS get Version

echo ----------------------------------------- wmic CPU
wmic CPU get Name 
wmic CPU get UniqueID
wmic CPU get SystemName
wmic CPU get ProcessorId
wmic CPU get ProcessorType
wmic CPU get Revision

echo ----------------------------------------- wmic BaseBoard  
wmic BaseBoard get Manufacturer
wmic BaseBoard get Model
wmic BaseBoard get PartNumber
wmic BaseBoard get OtherIdentifyingInfo
wmic BaseBoard get Product
wmic BaseBoard get SerialNumber
wmic BaseBoard get SKU
wmic BaseBoard get Status
wmic BaseBoard get Version
wmic BaseBoard get ConfigOptions
wmic BaseBoard get Description
wmic BaseBoard get HostingBoard

echo ----------------------------------------- wmic BIOS
wmic BIOS get SerialNumber
wmic BIOS get BIOSVersion  
wmic BIOS get SMBIOSBIOSVersion  
wmic BIOS get SMBIOSMajorVersion  
wmic BIOS get SMBIOSMinorVersion  
wmic BIOS get Version
wmic BIOS get PrimaryBios
wmic BIOS get Manufacturer
wmic BIOS get BiosCharacteristics
wmic BIOS get Version
wmic BIOS get Description
wmic BIOS get IdentificationCode
wmic BIOS get CodeSet
wmic BIOS get SoftwareElementID
wmic BIOS get Name

echo ----------------------------------------- wmic CSProduct
wmic CSProduct get Name
wmic CSProduct get UUID
wmic CSProduct get IdentifyingNumber
wmic CSProduct get SKUNumber
wmic CSProduct get Description
wmic CSProduct get Vendor
wmic CSProduct get Version

echo ----------------------------------------- wmic ComputerSystem
wmic ComputerSystem get ChassisSKUNumber 
wmic ComputerSystem get DNSHostName
wmic ComputerSystem get Domain
wmic ComputerSystem get DomainRole
wmic ComputerSystem get Name
wmic ComputerSystem get SystemType
wmic ComputerSystem get Model
wmic ComputerSystem get Manufacturer
wmic ComputerSystem get OEMStringArray
wmic ComputerSystem get SystemSKUNumber   

echo -----------------------------------------wmic NICConfig
@rem TODO: está muito verborragico
@rem wmic NICConfig get DNSDomain
@rem wmic NICConfig get DNSHostName
@rem wmic NICConfig get DHCPServer
@rem wmic NICConfig get DefaultIPGateway
@rem wmic NICConfig get IPAddress
@rem wmic NICConfig get IPSubnet
@rem wmic NICConfig get MACAddress

echo -----------------------------------------wmic Certificados


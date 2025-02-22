// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedDevice()
{
    NSString* _activationLockBypassCode;
    NSString* _androidSecurityPatchLevel;
    NSString* _azureADDeviceId;
    BOOL _azureADRegistered;
    NSDate* _complianceGracePeriodExpirationDateTime;
    MSGraphComplianceState* _complianceState;
    MSGraphConfigurationManagerClientEnabledFeatures* _configurationManagerClientEnabledFeatures;
    NSArray* _deviceActionResults;
    NSString* _deviceCategoryDisplayName;
    MSGraphDeviceEnrollmentType* _deviceEnrollmentType;
    MSGraphDeviceHealthAttestationState* _deviceHealthAttestationState;
    NSString* _deviceName;
    MSGraphDeviceRegistrationState* _deviceRegistrationState;
    BOOL _easActivated;
    NSDate* _easActivationDateTime;
    NSString* _easDeviceId;
    NSString* _emailAddress;
    NSDate* _enrolledDateTime;
    NSString* _ethernetMacAddress;
    MSGraphDeviceManagementExchangeAccessState* _exchangeAccessState;
    MSGraphDeviceManagementExchangeAccessStateReason* _exchangeAccessStateReason;
    NSDate* _exchangeLastSuccessfulSyncDateTime;
    int64_t _freeStorageSpaceInBytes;
    NSString* _iccid;
    NSString* _imei;
    BOOL _isEncrypted;
    BOOL _isSupervised;
    NSString* _jailBroken;
    NSDate* _lastSyncDateTime;
    NSString* _managedDeviceName;
    MSGraphManagedDeviceOwnerType* _managedDeviceOwnerType;
    MSGraphManagementAgentType* _managementAgent;
    NSString* _manufacturer;
    NSString* _meid;
    NSString* _model;
    NSString* _notes;
    NSString* _operatingSystem;
    NSString* _osVersion;
    MSGraphManagedDevicePartnerReportedHealthState* _partnerReportedThreatState;
    NSString* _phoneNumber;
    int64_t _physicalMemoryInBytes;
    NSString* _remoteAssistanceSessionErrorDetails;
    NSString* _remoteAssistanceSessionUrl;
    NSString* _serialNumber;
    NSString* _subscriberCarrier;
    int64_t _totalStorageSpaceInBytes;
    NSString* _udid;
    NSString* _userDisplayName;
    NSString* _userId;
    NSString* _userPrincipalName;
    NSString* _wiFiMacAddress;
    NSArray* _deviceCompliancePolicyStates;
    NSArray* _deviceConfigurationStates;
    MSGraphDeviceCategory* _deviceCategory;
}
@end

@implementation MSGraphManagedDevice

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedDevice";
    }
    return self;
}
- (NSString*) activationLockBypassCode
{
    if([[NSNull null] isEqual:self.dictionary[@"activationLockBypassCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"activationLockBypassCode"];
}

- (void) setActivationLockBypassCode: (NSString*) val
{
    self.dictionary[@"activationLockBypassCode"] = val;
}

- (NSString*) androidSecurityPatchLevel
{
    if([[NSNull null] isEqual:self.dictionary[@"androidSecurityPatchLevel"]])
    {
        return nil;
    }   
    return self.dictionary[@"androidSecurityPatchLevel"];
}

- (void) setAndroidSecurityPatchLevel: (NSString*) val
{
    self.dictionary[@"androidSecurityPatchLevel"] = val;
}

- (NSString*) azureADDeviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"azureADDeviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureADDeviceId"];
}

- (void) setAzureADDeviceId: (NSString*) val
{
    self.dictionary[@"azureADDeviceId"] = val;
}

- (BOOL) azureADRegistered
{
    _azureADRegistered = [self.dictionary[@"azureADRegistered"] boolValue];
    return _azureADRegistered;
}

- (void) setAzureADRegistered: (BOOL) val
{
    _azureADRegistered = val;
    self.dictionary[@"azureADRegistered"] = @(val);
}

- (NSDate*) complianceGracePeriodExpirationDateTime
{
    if(!_complianceGracePeriodExpirationDateTime){
        _complianceGracePeriodExpirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"complianceGracePeriodExpirationDateTime"]];
    }
    return _complianceGracePeriodExpirationDateTime;
}

- (void) setComplianceGracePeriodExpirationDateTime: (NSDate*) val
{
    _complianceGracePeriodExpirationDateTime = val;
    self.dictionary[@"complianceGracePeriodExpirationDateTime"] = [val ms_toString];
}

- (MSGraphComplianceState*) complianceState
{
    if(!_complianceState){
        _complianceState = [self.dictionary[@"complianceState"] toMSGraphComplianceState];
    }
    return _complianceState;
}

- (void) setComplianceState: (MSGraphComplianceState*) val
{
    _complianceState = val;
    self.dictionary[@"complianceState"] = val;
}

- (MSGraphConfigurationManagerClientEnabledFeatures*) configurationManagerClientEnabledFeatures
{
    if(!_configurationManagerClientEnabledFeatures){
        _configurationManagerClientEnabledFeatures = [[MSGraphConfigurationManagerClientEnabledFeatures alloc] initWithDictionary: self.dictionary[@"configurationManagerClientEnabledFeatures"]];
    }
    return _configurationManagerClientEnabledFeatures;
}

- (void) setConfigurationManagerClientEnabledFeatures: (MSGraphConfigurationManagerClientEnabledFeatures*) val
{
    _configurationManagerClientEnabledFeatures = val;
    self.dictionary[@"configurationManagerClientEnabledFeatures"] = val;
}

- (NSArray*) deviceActionResults
{
    if(!_deviceActionResults){
        
    NSMutableArray *deviceActionResultsResult = [NSMutableArray array];
    NSArray *deviceActionResults = self.dictionary[@"deviceActionResults"];

    if ([deviceActionResults isKindOfClass:[NSArray class]]){
        for (id tempDeviceActionResult in deviceActionResults){
            [deviceActionResultsResult addObject:tempDeviceActionResult];
        }
    }

    _deviceActionResults = deviceActionResultsResult;
        
    }
    return _deviceActionResults;
}

- (void) setDeviceActionResults: (NSArray*) val
{
    _deviceActionResults = val;
    self.dictionary[@"deviceActionResults"] = val;
}

- (NSString*) deviceCategoryDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceCategoryDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceCategoryDisplayName"];
}

- (void) setDeviceCategoryDisplayName: (NSString*) val
{
    self.dictionary[@"deviceCategoryDisplayName"] = val;
}

- (MSGraphDeviceEnrollmentType*) deviceEnrollmentType
{
    if(!_deviceEnrollmentType){
        _deviceEnrollmentType = [self.dictionary[@"deviceEnrollmentType"] toMSGraphDeviceEnrollmentType];
    }
    return _deviceEnrollmentType;
}

- (void) setDeviceEnrollmentType: (MSGraphDeviceEnrollmentType*) val
{
    _deviceEnrollmentType = val;
    self.dictionary[@"deviceEnrollmentType"] = val;
}

- (MSGraphDeviceHealthAttestationState*) deviceHealthAttestationState
{
    if(!_deviceHealthAttestationState){
        _deviceHealthAttestationState = [[MSGraphDeviceHealthAttestationState alloc] initWithDictionary: self.dictionary[@"deviceHealthAttestationState"]];
    }
    return _deviceHealthAttestationState;
}

- (void) setDeviceHealthAttestationState: (MSGraphDeviceHealthAttestationState*) val
{
    _deviceHealthAttestationState = val;
    self.dictionary[@"deviceHealthAttestationState"] = val;
}

- (NSString*) deviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceName"];
}

- (void) setDeviceName: (NSString*) val
{
    self.dictionary[@"deviceName"] = val;
}

- (MSGraphDeviceRegistrationState*) deviceRegistrationState
{
    if(!_deviceRegistrationState){
        _deviceRegistrationState = [self.dictionary[@"deviceRegistrationState"] toMSGraphDeviceRegistrationState];
    }
    return _deviceRegistrationState;
}

- (void) setDeviceRegistrationState: (MSGraphDeviceRegistrationState*) val
{
    _deviceRegistrationState = val;
    self.dictionary[@"deviceRegistrationState"] = val;
}

- (BOOL) easActivated
{
    _easActivated = [self.dictionary[@"easActivated"] boolValue];
    return _easActivated;
}

- (void) setEasActivated: (BOOL) val
{
    _easActivated = val;
    self.dictionary[@"easActivated"] = @(val);
}

- (NSDate*) easActivationDateTime
{
    if(!_easActivationDateTime){
        _easActivationDateTime = [NSDate ms_dateFromString: self.dictionary[@"easActivationDateTime"]];
    }
    return _easActivationDateTime;
}

- (void) setEasActivationDateTime: (NSDate*) val
{
    _easActivationDateTime = val;
    self.dictionary[@"easActivationDateTime"] = [val ms_toString];
}

- (NSString*) easDeviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"easDeviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"easDeviceId"];
}

- (void) setEasDeviceId: (NSString*) val
{
    self.dictionary[@"easDeviceId"] = val;
}

- (NSString*) emailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"emailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (NSDate*) enrolledDateTime
{
    if(!_enrolledDateTime){
        _enrolledDateTime = [NSDate ms_dateFromString: self.dictionary[@"enrolledDateTime"]];
    }
    return _enrolledDateTime;
}

- (void) setEnrolledDateTime: (NSDate*) val
{
    _enrolledDateTime = val;
    self.dictionary[@"enrolledDateTime"] = [val ms_toString];
}

- (NSString*) ethernetMacAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"ethernetMacAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"ethernetMacAddress"];
}

- (void) setEthernetMacAddress: (NSString*) val
{
    self.dictionary[@"ethernetMacAddress"] = val;
}

- (MSGraphDeviceManagementExchangeAccessState*) exchangeAccessState
{
    if(!_exchangeAccessState){
        _exchangeAccessState = [self.dictionary[@"exchangeAccessState"] toMSGraphDeviceManagementExchangeAccessState];
    }
    return _exchangeAccessState;
}

- (void) setExchangeAccessState: (MSGraphDeviceManagementExchangeAccessState*) val
{
    _exchangeAccessState = val;
    self.dictionary[@"exchangeAccessState"] = val;
}

- (MSGraphDeviceManagementExchangeAccessStateReason*) exchangeAccessStateReason
{
    if(!_exchangeAccessStateReason){
        _exchangeAccessStateReason = [self.dictionary[@"exchangeAccessStateReason"] toMSGraphDeviceManagementExchangeAccessStateReason];
    }
    return _exchangeAccessStateReason;
}

- (void) setExchangeAccessStateReason: (MSGraphDeviceManagementExchangeAccessStateReason*) val
{
    _exchangeAccessStateReason = val;
    self.dictionary[@"exchangeAccessStateReason"] = val;
}

- (NSDate*) exchangeLastSuccessfulSyncDateTime
{
    if(!_exchangeLastSuccessfulSyncDateTime){
        _exchangeLastSuccessfulSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"exchangeLastSuccessfulSyncDateTime"]];
    }
    return _exchangeLastSuccessfulSyncDateTime;
}

- (void) setExchangeLastSuccessfulSyncDateTime: (NSDate*) val
{
    _exchangeLastSuccessfulSyncDateTime = val;
    self.dictionary[@"exchangeLastSuccessfulSyncDateTime"] = [val ms_toString];
}

- (int64_t) freeStorageSpaceInBytes
{
    _freeStorageSpaceInBytes = [self.dictionary[@"freeStorageSpaceInBytes"] longLongValue];
    return _freeStorageSpaceInBytes;
}

- (void) setFreeStorageSpaceInBytes: (int64_t) val
{
    _freeStorageSpaceInBytes = val;
    self.dictionary[@"freeStorageSpaceInBytes"] = @(val);
}

- (NSString*) iccid
{
    if([[NSNull null] isEqual:self.dictionary[@"iccid"]])
    {
        return nil;
    }   
    return self.dictionary[@"iccid"];
}

- (void) setIccid: (NSString*) val
{
    self.dictionary[@"iccid"] = val;
}

- (NSString*) imei
{
    if([[NSNull null] isEqual:self.dictionary[@"imei"]])
    {
        return nil;
    }   
    return self.dictionary[@"imei"];
}

- (void) setImei: (NSString*) val
{
    self.dictionary[@"imei"] = val;
}

- (BOOL) isEncrypted
{
    _isEncrypted = [self.dictionary[@"isEncrypted"] boolValue];
    return _isEncrypted;
}

- (void) setIsEncrypted: (BOOL) val
{
    _isEncrypted = val;
    self.dictionary[@"isEncrypted"] = @(val);
}

- (BOOL) isSupervised
{
    _isSupervised = [self.dictionary[@"isSupervised"] boolValue];
    return _isSupervised;
}

- (void) setIsSupervised: (BOOL) val
{
    _isSupervised = val;
    self.dictionary[@"isSupervised"] = @(val);
}

- (NSString*) jailBroken
{
    if([[NSNull null] isEqual:self.dictionary[@"jailBroken"]])
    {
        return nil;
    }   
    return self.dictionary[@"jailBroken"];
}

- (void) setJailBroken: (NSString*) val
{
    self.dictionary[@"jailBroken"] = val;
}

- (NSDate*) lastSyncDateTime
{
    if(!_lastSyncDateTime){
        _lastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastSyncDateTime"]];
    }
    return _lastSyncDateTime;
}

- (void) setLastSyncDateTime: (NSDate*) val
{
    _lastSyncDateTime = val;
    self.dictionary[@"lastSyncDateTime"] = [val ms_toString];
}

- (NSString*) managedDeviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"managedDeviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"managedDeviceName"];
}

- (void) setManagedDeviceName: (NSString*) val
{
    self.dictionary[@"managedDeviceName"] = val;
}

- (MSGraphManagedDeviceOwnerType*) managedDeviceOwnerType
{
    if(!_managedDeviceOwnerType){
        _managedDeviceOwnerType = [self.dictionary[@"managedDeviceOwnerType"] toMSGraphManagedDeviceOwnerType];
    }
    return _managedDeviceOwnerType;
}

- (void) setManagedDeviceOwnerType: (MSGraphManagedDeviceOwnerType*) val
{
    _managedDeviceOwnerType = val;
    self.dictionary[@"managedDeviceOwnerType"] = val;
}

- (MSGraphManagementAgentType*) managementAgent
{
    if(!_managementAgent){
        _managementAgent = [self.dictionary[@"managementAgent"] toMSGraphManagementAgentType];
    }
    return _managementAgent;
}

- (void) setManagementAgent: (MSGraphManagementAgentType*) val
{
    _managementAgent = val;
    self.dictionary[@"managementAgent"] = val;
}

- (NSString*) manufacturer
{
    if([[NSNull null] isEqual:self.dictionary[@"manufacturer"]])
    {
        return nil;
    }   
    return self.dictionary[@"manufacturer"];
}

- (void) setManufacturer: (NSString*) val
{
    self.dictionary[@"manufacturer"] = val;
}

- (NSString*) meid
{
    if([[NSNull null] isEqual:self.dictionary[@"meid"]])
    {
        return nil;
    }   
    return self.dictionary[@"meid"];
}

- (void) setMeid: (NSString*) val
{
    self.dictionary[@"meid"] = val;
}

- (NSString*) model
{
    if([[NSNull null] isEqual:self.dictionary[@"model"]])
    {
        return nil;
    }   
    return self.dictionary[@"model"];
}

- (void) setModel: (NSString*) val
{
    self.dictionary[@"model"] = val;
}

- (NSString*) notes
{
    if([[NSNull null] isEqual:self.dictionary[@"notes"]])
    {
        return nil;
    }   
    return self.dictionary[@"notes"];
}

- (void) setNotes: (NSString*) val
{
    self.dictionary[@"notes"] = val;
}

- (NSString*) operatingSystem
{
    if([[NSNull null] isEqual:self.dictionary[@"operatingSystem"]])
    {
        return nil;
    }   
    return self.dictionary[@"operatingSystem"];
}

- (void) setOperatingSystem: (NSString*) val
{
    self.dictionary[@"operatingSystem"] = val;
}

- (NSString*) osVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osVersion"];
}

- (void) setOsVersion: (NSString*) val
{
    self.dictionary[@"osVersion"] = val;
}

- (MSGraphManagedDevicePartnerReportedHealthState*) partnerReportedThreatState
{
    if(!_partnerReportedThreatState){
        _partnerReportedThreatState = [self.dictionary[@"partnerReportedThreatState"] toMSGraphManagedDevicePartnerReportedHealthState];
    }
    return _partnerReportedThreatState;
}

- (void) setPartnerReportedThreatState: (MSGraphManagedDevicePartnerReportedHealthState*) val
{
    _partnerReportedThreatState = val;
    self.dictionary[@"partnerReportedThreatState"] = val;
}

- (NSString*) phoneNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"phoneNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"phoneNumber"];
}

- (void) setPhoneNumber: (NSString*) val
{
    self.dictionary[@"phoneNumber"] = val;
}

- (int64_t) physicalMemoryInBytes
{
    _physicalMemoryInBytes = [self.dictionary[@"physicalMemoryInBytes"] longLongValue];
    return _physicalMemoryInBytes;
}

- (void) setPhysicalMemoryInBytes: (int64_t) val
{
    _physicalMemoryInBytes = val;
    self.dictionary[@"physicalMemoryInBytes"] = @(val);
}

- (NSString*) remoteAssistanceSessionErrorDetails
{
    if([[NSNull null] isEqual:self.dictionary[@"remoteAssistanceSessionErrorDetails"]])
    {
        return nil;
    }   
    return self.dictionary[@"remoteAssistanceSessionErrorDetails"];
}

- (void) setRemoteAssistanceSessionErrorDetails: (NSString*) val
{
    self.dictionary[@"remoteAssistanceSessionErrorDetails"] = val;
}

- (NSString*) remoteAssistanceSessionUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"remoteAssistanceSessionUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"remoteAssistanceSessionUrl"];
}

- (void) setRemoteAssistanceSessionUrl: (NSString*) val
{
    self.dictionary[@"remoteAssistanceSessionUrl"] = val;
}

- (NSString*) serialNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"serialNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"serialNumber"];
}

- (void) setSerialNumber: (NSString*) val
{
    self.dictionary[@"serialNumber"] = val;
}

- (NSString*) subscriberCarrier
{
    if([[NSNull null] isEqual:self.dictionary[@"subscriberCarrier"]])
    {
        return nil;
    }   
    return self.dictionary[@"subscriberCarrier"];
}

- (void) setSubscriberCarrier: (NSString*) val
{
    self.dictionary[@"subscriberCarrier"] = val;
}

- (int64_t) totalStorageSpaceInBytes
{
    _totalStorageSpaceInBytes = [self.dictionary[@"totalStorageSpaceInBytes"] longLongValue];
    return _totalStorageSpaceInBytes;
}

- (void) setTotalStorageSpaceInBytes: (int64_t) val
{
    _totalStorageSpaceInBytes = val;
    self.dictionary[@"totalStorageSpaceInBytes"] = @(val);
}

- (NSString*) udid
{
    if([[NSNull null] isEqual:self.dictionary[@"udid"]])
    {
        return nil;
    }   
    return self.dictionary[@"udid"];
}

- (void) setUdid: (NSString*) val
{
    self.dictionary[@"udid"] = val;
}

- (NSString*) userDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"userDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userDisplayName"];
}

- (void) setUserDisplayName: (NSString*) val
{
    self.dictionary[@"userDisplayName"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}

- (NSString*) wiFiMacAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"wiFiMacAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"wiFiMacAddress"];
}

- (void) setWiFiMacAddress: (NSString*) val
{
    self.dictionary[@"wiFiMacAddress"] = val;
}

- (NSArray*) deviceCompliancePolicyStates
{
    if(!_deviceCompliancePolicyStates){
        
    NSMutableArray *deviceCompliancePolicyStatesResult = [NSMutableArray array];
    NSArray *deviceCompliancePolicyStates = self.dictionary[@"deviceCompliancePolicyStates"];

    if ([deviceCompliancePolicyStates isKindOfClass:[NSArray class]]){
        for (id tempDeviceCompliancePolicyState in deviceCompliancePolicyStates){
            [deviceCompliancePolicyStatesResult addObject:tempDeviceCompliancePolicyState];
        }
    }

    _deviceCompliancePolicyStates = deviceCompliancePolicyStatesResult;
        
    }
    return _deviceCompliancePolicyStates;
}

- (void) setDeviceCompliancePolicyStates: (NSArray*) val
{
    _deviceCompliancePolicyStates = val;
    self.dictionary[@"deviceCompliancePolicyStates"] = val;
}

- (NSArray*) deviceConfigurationStates
{
    if(!_deviceConfigurationStates){
        
    NSMutableArray *deviceConfigurationStatesResult = [NSMutableArray array];
    NSArray *deviceConfigurationStates = self.dictionary[@"deviceConfigurationStates"];

    if ([deviceConfigurationStates isKindOfClass:[NSArray class]]){
        for (id tempDeviceConfigurationState in deviceConfigurationStates){
            [deviceConfigurationStatesResult addObject:tempDeviceConfigurationState];
        }
    }

    _deviceConfigurationStates = deviceConfigurationStatesResult;
        
    }
    return _deviceConfigurationStates;
}

- (void) setDeviceConfigurationStates: (NSArray*) val
{
    _deviceConfigurationStates = val;
    self.dictionary[@"deviceConfigurationStates"] = val;
}

- (MSGraphDeviceCategory*) deviceCategory
{
    if(!_deviceCategory){
        _deviceCategory = [[MSGraphDeviceCategory alloc] initWithDictionary: self.dictionary[@"deviceCategory"]];
    }
    return _deviceCategory;
}

- (void) setDeviceCategory: (MSGraphDeviceCategory*) val
{
    _deviceCategory = val;
    self.dictionary[@"deviceCategory"] = val;
}


@end

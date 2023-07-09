// Autogenerated from Pigeon (v10.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "pigeon.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

<<<<<<< HEAD
@interface User ()
+ (User *)fromList:(NSArray *)list;
+ (nullable User *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation User
+ (instancetype)makeWithUserId:(NSString *)userId
    name:(nullable NSString *)name
    email:(nullable NSString *)email
    isActive:(nullable NSNumber *)isActive
    isLocked:(nullable NSNumber *)isLocked
    isOnboarded:(NSNumber *)isOnboarded
    centerName:(nullable NSString *)centerName
    centerId:(nullable NSString *)centerId
    machineName:(nullable NSString *)machineName
    machineId:(nullable NSString *)machineId
    failedAttempts:(nullable NSString *)failedAttempts
    errorCode:(nullable NSString *)errorCode {
  User* pigeonResult = [[User alloc] init];
  pigeonResult.userId = userId;
  pigeonResult.name = name;
  pigeonResult.email = email;
  pigeonResult.isActive = isActive;
  pigeonResult.isLocked = isLocked;
  pigeonResult.isOnboarded = isOnboarded;
  pigeonResult.centerName = centerName;
  pigeonResult.centerId = centerId;
  pigeonResult.machineName = machineName;
  pigeonResult.machineId = machineId;
  pigeonResult.failedAttempts = failedAttempts;
  pigeonResult.errorCode = errorCode;
  return pigeonResult;
}
+ (User *)fromList:(NSArray *)list {
  User *pigeonResult = [[User alloc] init];
  pigeonResult.userId = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.userId != nil, @"");
  pigeonResult.name = GetNullableObjectAtIndex(list, 1);
  pigeonResult.email = GetNullableObjectAtIndex(list, 2);
  pigeonResult.isActive = GetNullableObjectAtIndex(list, 3);
  pigeonResult.isLocked = GetNullableObjectAtIndex(list, 4);
  pigeonResult.isOnboarded = GetNullableObjectAtIndex(list, 5);
  NSAssert(pigeonResult.isOnboarded != nil, @"");
  pigeonResult.centerName = GetNullableObjectAtIndex(list, 6);
  pigeonResult.centerId = GetNullableObjectAtIndex(list, 7);
  pigeonResult.machineName = GetNullableObjectAtIndex(list, 8);
  pigeonResult.machineId = GetNullableObjectAtIndex(list, 9);
  pigeonResult.failedAttempts = GetNullableObjectAtIndex(list, 10);
  pigeonResult.errorCode = GetNullableObjectAtIndex(list, 11);
  return pigeonResult;
}
+ (nullable User *)nullableFromList:(NSArray *)list {
  return (list) ? [User fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.userId ?: [NSNull null]),
    (self.name ?: [NSNull null]),
    (self.email ?: [NSNull null]),
    (self.isActive ?: [NSNull null]),
    (self.isLocked ?: [NSNull null]),
    (self.isOnboarded ?: [NSNull null]),
    (self.centerName ?: [NSNull null]),
    (self.centerId ?: [NSNull null]),
    (self.machineName ?: [NSNull null]),
    (self.machineId ?: [NSNull null]),
    (self.failedAttempts ?: [NSNull null]),
=======
@interface Sync ()
+ (Sync *)fromList:(NSArray *)list;
+ (nullable Sync *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SyncTime ()
+ (SyncTime *)fromList:(NSArray *)list;
+ (nullable SyncTime *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation Sync
+ (instancetype)makeWithSyncType:(nullable NSString *)syncType
    syncProgress:(nullable NSNumber *)syncProgress
    errorCode:(nullable NSString *)errorCode {
  Sync* pigeonResult = [[Sync alloc] init];
  pigeonResult.syncType = syncType;
  pigeonResult.syncProgress = syncProgress;
  pigeonResult.errorCode = errorCode;
  return pigeonResult;
}
+ (Sync *)fromList:(NSArray *)list {
  Sync *pigeonResult = [[Sync alloc] init];
  pigeonResult.syncType = GetNullableObjectAtIndex(list, 0);
  pigeonResult.syncProgress = GetNullableObjectAtIndex(list, 1);
  pigeonResult.errorCode = GetNullableObjectAtIndex(list, 2);
  return pigeonResult;
}
+ (nullable Sync *)nullableFromList:(NSArray *)list {
  return (list) ? [Sync fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.syncType ?: [NSNull null]),
    (self.syncProgress ?: [NSNull null]),
>>>>>>> 92cebc7 (auto data sync done)
    (self.errorCode ?: [NSNull null]),
  ];
}
@end

<<<<<<< HEAD
@interface UserApiCodecReader : FlutterStandardReader
@end
@implementation UserApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [User fromList:[self readValue]];
=======
@implementation SyncTime
+ (instancetype)makeWithSyncTime:(nullable NSString *)syncTime {
  SyncTime* pigeonResult = [[SyncTime alloc] init];
  pigeonResult.syncTime = syncTime;
  return pigeonResult;
}
+ (SyncTime *)fromList:(NSArray *)list {
  SyncTime *pigeonResult = [[SyncTime alloc] init];
  pigeonResult.syncTime = GetNullableObjectAtIndex(list, 0);
  return pigeonResult;
}
+ (nullable SyncTime *)nullableFromList:(NSArray *)list {
  return (list) ? [SyncTime fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.syncTime ?: [NSNull null]),
  ];
}
@end

@interface SyncApiCodecReader : FlutterStandardReader
@end
@implementation SyncApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [Sync fromList:[self readValue]];
    case 129: 
      return [SyncTime fromList:[self readValue]];
>>>>>>> 92cebc7 (auto data sync done)
    default:
      return [super readValueOfType:type];
  }
}
@end

<<<<<<< HEAD
@interface UserApiCodecWriter : FlutterStandardWriter
@end
@implementation UserApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[User class]]) {
=======
@interface SyncApiCodecWriter : FlutterStandardWriter
@end
@implementation SyncApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[Sync class]]) {
>>>>>>> 92cebc7 (auto data sync done)
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SyncTime class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

<<<<<<< HEAD
@interface UserApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation UserApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[UserApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[UserApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *UserApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    UserApiCodecReaderWriter *readerWriter = [[UserApiCodecReaderWriter alloc] init];
=======
@interface SyncApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation SyncApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[SyncApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[SyncApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *SyncApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    SyncApiCodecReaderWriter *readerWriter = [[SyncApiCodecReaderWriter alloc] init];
>>>>>>> 92cebc7 (auto data sync done)
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

<<<<<<< HEAD
void UserApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<UserApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.UserApi.validateUser"
        binaryMessenger:binaryMessenger
        codec:UserApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(validateUserUsername:completion:)], @"UserApi api (%@) doesn't respond to @selector(validateUserUsername:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_username = GetNullableObjectAtIndex(args, 0);
        [api validateUserUsername:arg_username completion:^(User *_Nullable output, FlutterError *_Nullable error) {
=======
void SyncApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<SyncApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SyncApi.getLastSyncTime"
        binaryMessenger:binaryMessenger
        codec:SyncApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getLastSyncTimeWithCompletion:)], @"SyncApi api (%@) doesn't respond to @selector(getLastSyncTimeWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getLastSyncTimeWithCompletion:^(SyncTime *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SyncApi.getCertificateSync"
        binaryMessenger:binaryMessenger
        codec:SyncApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getCertificateSyncWithCompletion:)], @"SyncApi api (%@) doesn't respond to @selector(getCertificateSyncWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getCertificateSyncWithCompletion:^(Sync *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SyncApi.getGlobalParamsSync"
        binaryMessenger:binaryMessenger
        codec:SyncApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getGlobalParamsSyncWithCompletion:)], @"SyncApi api (%@) doesn't respond to @selector(getGlobalParamsSyncWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getGlobalParamsSyncWithCompletion:^(Sync *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SyncApi.getUserDetailsSync"
        binaryMessenger:binaryMessenger
        codec:SyncApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getUserDetailsSyncWithCompletion:)], @"SyncApi api (%@) doesn't respond to @selector(getUserDetailsSyncWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getUserDetailsSyncWithCompletion:^(Sync *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SyncApi.getIDSchemaSync"
        binaryMessenger:binaryMessenger
        codec:SyncApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getIDSchemaSyncWithCompletion:)], @"SyncApi api (%@) doesn't respond to @selector(getIDSchemaSyncWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getIDSchemaSyncWithCompletion:^(Sync *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.SyncApi.getMasterDataSync"
        binaryMessenger:binaryMessenger
        codec:SyncApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getMasterDataSyncWithCompletion:)], @"SyncApi api (%@) doesn't respond to @selector(getMasterDataSyncWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getMasterDataSyncWithCompletion:^(Sync *_Nullable output, FlutterError *_Nullable error) {
>>>>>>> 92cebc7 (auto data sync done)
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}

// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Commands.pb.h"
// @@protoc_insertion_point(imports)

@implementation CommandsRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [CommandsRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Command ()
@property CommandCommandType type;
@property (strong) HelloCommand* hello;
@property (strong) SignalCommand* signal;
@end

@implementation Command

- (BOOL) hasType {
  return !!hasType_;
}
- (void) setHasType:(BOOL) _value_ {
  hasType_ = !!_value_;
}
@synthesize type;
- (BOOL) hasHello {
  return !!hasHello_;
}
- (void) setHasHello:(BOOL) _value_ {
  hasHello_ = !!_value_;
}
@synthesize hello;
- (BOOL) hasSignal {
  return !!hasSignal_;
}
- (void) setHasSignal:(BOOL) _value_ {
  hasSignal_ = !!_value_;
}
@synthesize signal;
- (instancetype) init {
  if ((self = [super init])) {
    self.type = CommandCommandTypeHello;
    self.hello = [HelloCommand defaultInstance];
    self.signal = [SignalCommand defaultInstance];
  }
  return self;
}
static Command* defaultCommandInstance = nil;
+ (void) initialize {
  if (self == [Command class]) {
    defaultCommandInstance = [[Command alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultCommandInstance;
}
- (instancetype) defaultInstance {
  return defaultCommandInstance;
}
- (BOOL) isInitialized {
  if (!self.hasType) {
    return NO;
  }
  if (self.hasHello) {
    if (!self.hello.isInitialized) {
      return NO;
    }
  }
  if (self.hasSignal) {
    if (!self.signal.isInitialized) {
      return NO;
    }
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasType) {
    [output writeEnum:1 value:self.type];
  }
  if (self.hasHello) {
    [output writeMessage:51 value:self.hello];
  }
  if (self.hasSignal) {
    [output writeMessage:52 value:self.signal];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasType) {
    size_ += computeEnumSize(1, self.type);
  }
  if (self.hasHello) {
    size_ += computeMessageSize(51, self.hello);
  }
  if (self.hasSignal) {
    size_ += computeMessageSize(52, self.signal);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Command*) parseFromData:(NSData*) data {
  return (Command*)[[[Command builder] mergeFromData:data] build];
}
+ (Command*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Command*)[[[Command builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Command*) parseFromInputStream:(NSInputStream*) input {
  return (Command*)[[[Command builder] mergeFromInputStream:input] build];
}
+ (Command*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Command*)[[[Command builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Command*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Command*)[[[Command builder] mergeFromCodedInputStream:input] build];
}
+ (Command*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Command*)[[[Command builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (CommandBuilder*) builder {
  return [[CommandBuilder alloc] init];
}
+ (CommandBuilder*) builderWithPrototype:(Command*) prototype {
  return [[Command builder] mergeFrom:prototype];
}
- (CommandBuilder*) builder {
  return [Command builder];
}
- (CommandBuilder*) toBuilder {
  return [Command builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasType) {
    [output appendFormat:@"%@%@: %@\n", indent, @"type", NSStringFromCommandCommandType(self.type)];
  }
  if (self.hasHello) {
    [output appendFormat:@"%@%@ {\n", indent, @"hello"];
    [self.hello writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  if (self.hasSignal) {
    [output appendFormat:@"%@%@ {\n", indent, @"signal"];
    [self.signal writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasType) {
    [dictionary setObject: @(self.type) forKey: @"type"];
  }
  if (self.hasHello) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.hello storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"hello"];
  }
  if (self.hasSignal) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.signal storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"signal"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Command class]]) {
    return NO;
  }
  Command *otherMessage = other;
  return
      self.hasType == otherMessage.hasType &&
      (!self.hasType || self.type == otherMessage.type) &&
      self.hasHello == otherMessage.hasHello &&
      (!self.hasHello || [self.hello isEqual:otherMessage.hello]) &&
      self.hasSignal == otherMessage.hasSignal &&
      (!self.hasSignal || [self.signal isEqual:otherMessage.signal]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasType) {
    hashCode = hashCode * 31 + self.type;
  }
  if (self.hasHello) {
    hashCode = hashCode * 31 + [self.hello hash];
  }
  if (self.hasSignal) {
    hashCode = hashCode * 31 + [self.signal hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

BOOL CommandCommandTypeIsValidValue(CommandCommandType value) {
  switch (value) {
    case CommandCommandTypeHello:
    case CommandCommandTypeSignal:
      return YES;
    default:
      return NO;
  }
}
NSString *NSStringFromCommandCommandType(CommandCommandType value) {
  switch (value) {
    case CommandCommandTypeHello:
      return @"CommandCommandTypeHello";
    case CommandCommandTypeSignal:
      return @"CommandCommandTypeSignal";
    default:
      return nil;
  }
}

@interface CommandBuilder()
@property (strong) Command* resultCommand;
@end

@implementation CommandBuilder
@synthesize resultCommand;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultCommand = [[Command alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultCommand;
}
- (CommandBuilder*) clear {
  self.resultCommand = [[Command alloc] init];
  return self;
}
- (CommandBuilder*) clone {
  return [Command builderWithPrototype:resultCommand];
}
- (Command*) defaultInstance {
  return [Command defaultInstance];
}
- (Command*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Command*) buildPartial {
  Command* returnMe = resultCommand;
  self.resultCommand = nil;
  return returnMe;
}
- (CommandBuilder*) mergeFrom:(Command*) other {
  if (other == [Command defaultInstance]) {
    return self;
  }
  if (other.hasType) {
    [self setType:other.type];
  }
  if (other.hasHello) {
    [self mergeHello:other.hello];
  }
  if (other.hasSignal) {
    [self mergeSignal:other.signal];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (CommandBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (CommandBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        CommandCommandType value = (CommandCommandType)[input readEnum];
        if (CommandCommandTypeIsValidValue(value)) {
          [self setType:value];
        } else {
          [unknownFields mergeVarintField:1 value:value];
        }
        break;
      }
      case 410: {
        HelloCommandBuilder* subBuilder = [HelloCommand builder];
        if (self.hasHello) {
          [subBuilder mergeFrom:self.hello];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setHello:[subBuilder buildPartial]];
        break;
      }
      case 418: {
        SignalCommandBuilder* subBuilder = [SignalCommand builder];
        if (self.hasSignal) {
          [subBuilder mergeFrom:self.signal];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setSignal:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasType {
  return resultCommand.hasType;
}
- (CommandCommandType) type {
  return resultCommand.type;
}
- (CommandBuilder*) setType:(CommandCommandType) value {
  resultCommand.hasType = YES;
  resultCommand.type = value;
  return self;
}
- (CommandBuilder*) clearType {
  resultCommand.hasType = NO;
  resultCommand.type = CommandCommandTypeHello;
  return self;
}
- (BOOL) hasHello {
  return resultCommand.hasHello;
}
- (HelloCommand*) hello {
  return resultCommand.hello;
}
- (CommandBuilder*) setHello:(HelloCommand*) value {
  resultCommand.hasHello = YES;
  resultCommand.hello = value;
  return self;
}
- (CommandBuilder*) setHelloBuilder:(HelloCommandBuilder*) builderForValue {
  return [self setHello:[builderForValue build]];
}
- (CommandBuilder*) mergeHello:(HelloCommand*) value {
  if (resultCommand.hasHello &&
      resultCommand.hello != [HelloCommand defaultInstance]) {
    resultCommand.hello =
      [[[HelloCommand builderWithPrototype:resultCommand.hello] mergeFrom:value] buildPartial];
  } else {
    resultCommand.hello = value;
  }
  resultCommand.hasHello = YES;
  return self;
}
- (CommandBuilder*) clearHello {
  resultCommand.hasHello = NO;
  resultCommand.hello = [HelloCommand defaultInstance];
  return self;
}
- (BOOL) hasSignal {
  return resultCommand.hasSignal;
}
- (SignalCommand*) signal {
  return resultCommand.signal;
}
- (CommandBuilder*) setSignal:(SignalCommand*) value {
  resultCommand.hasSignal = YES;
  resultCommand.signal = value;
  return self;
}
- (CommandBuilder*) setSignalBuilder:(SignalCommandBuilder*) builderForValue {
  return [self setSignal:[builderForValue build]];
}
- (CommandBuilder*) mergeSignal:(SignalCommand*) value {
  if (resultCommand.hasSignal &&
      resultCommand.signal != [SignalCommand defaultInstance]) {
    resultCommand.signal =
      [[[SignalCommand builderWithPrototype:resultCommand.signal] mergeFrom:value] buildPartial];
  } else {
    resultCommand.signal = value;
  }
  resultCommand.hasSignal = YES;
  return self;
}
- (CommandBuilder*) clearSignal {
  resultCommand.hasSignal = NO;
  resultCommand.signal = [SignalCommand defaultInstance];
  return self;
}
@end

@interface HelloCommand ()
@property SInt32 version;
@property SInt64 nodeId;
@property Float64 latitude;
@property Float64 longitude;
@end

@implementation HelloCommand

- (BOOL) hasVersion {
  return !!hasVersion_;
}
- (void) setHasVersion:(BOOL) _value_ {
  hasVersion_ = !!_value_;
}
@synthesize version;
- (BOOL) hasNodeId {
  return !!hasNodeId_;
}
- (void) setHasNodeId:(BOOL) _value_ {
  hasNodeId_ = !!_value_;
}
@synthesize nodeId;
- (BOOL) hasLatitude {
  return !!hasLatitude_;
}
- (void) setHasLatitude:(BOOL) _value_ {
  hasLatitude_ = !!_value_;
}
@synthesize latitude;
- (BOOL) hasLongitude {
  return !!hasLongitude_;
}
- (void) setHasLongitude:(BOOL) _value_ {
  hasLongitude_ = !!_value_;
}
@synthesize longitude;
- (instancetype) init {
  if ((self = [super init])) {
    self.version = 0;
    self.nodeId = 0L;
    self.latitude = 0;
    self.longitude = 0;
  }
  return self;
}
static HelloCommand* defaultHelloCommandInstance = nil;
+ (void) initialize {
  if (self == [HelloCommand class]) {
    defaultHelloCommandInstance = [[HelloCommand alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultHelloCommandInstance;
}
- (instancetype) defaultInstance {
  return defaultHelloCommandInstance;
}
- (BOOL) isInitialized {
  if (!self.hasVersion) {
    return NO;
  }
  if (!self.hasNodeId) {
    return NO;
  }
  if (!self.hasLatitude) {
    return NO;
  }
  if (!self.hasLongitude) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasVersion) {
    [output writeInt32:1 value:self.version];
  }
  if (self.hasNodeId) {
    [output writeInt64:2 value:self.nodeId];
  }
  if (self.hasLatitude) {
    [output writeDouble:3 value:self.latitude];
  }
  if (self.hasLongitude) {
    [output writeDouble:4 value:self.longitude];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasVersion) {
    size_ += computeInt32Size(1, self.version);
  }
  if (self.hasNodeId) {
    size_ += computeInt64Size(2, self.nodeId);
  }
  if (self.hasLatitude) {
    size_ += computeDoubleSize(3, self.latitude);
  }
  if (self.hasLongitude) {
    size_ += computeDoubleSize(4, self.longitude);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (HelloCommand*) parseFromData:(NSData*) data {
  return (HelloCommand*)[[[HelloCommand builder] mergeFromData:data] build];
}
+ (HelloCommand*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (HelloCommand*)[[[HelloCommand builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (HelloCommand*) parseFromInputStream:(NSInputStream*) input {
  return (HelloCommand*)[[[HelloCommand builder] mergeFromInputStream:input] build];
}
+ (HelloCommand*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (HelloCommand*)[[[HelloCommand builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (HelloCommand*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (HelloCommand*)[[[HelloCommand builder] mergeFromCodedInputStream:input] build];
}
+ (HelloCommand*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (HelloCommand*)[[[HelloCommand builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (HelloCommandBuilder*) builder {
  return [[HelloCommandBuilder alloc] init];
}
+ (HelloCommandBuilder*) builderWithPrototype:(HelloCommand*) prototype {
  return [[HelloCommand builder] mergeFrom:prototype];
}
- (HelloCommandBuilder*) builder {
  return [HelloCommand builder];
}
- (HelloCommandBuilder*) toBuilder {
  return [HelloCommand builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasVersion) {
    [output appendFormat:@"%@%@: %@\n", indent, @"version", [NSNumber numberWithInteger:self.version]];
  }
  if (self.hasNodeId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"nodeId", [NSNumber numberWithLongLong:self.nodeId]];
  }
  if (self.hasLatitude) {
    [output appendFormat:@"%@%@: %@\n", indent, @"latitude", [NSNumber numberWithDouble:self.latitude]];
  }
  if (self.hasLongitude) {
    [output appendFormat:@"%@%@: %@\n", indent, @"longitude", [NSNumber numberWithDouble:self.longitude]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasVersion) {
    [dictionary setObject: [NSNumber numberWithInteger:self.version] forKey: @"version"];
  }
  if (self.hasNodeId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.nodeId] forKey: @"nodeId"];
  }
  if (self.hasLatitude) {
    [dictionary setObject: [NSNumber numberWithDouble:self.latitude] forKey: @"latitude"];
  }
  if (self.hasLongitude) {
    [dictionary setObject: [NSNumber numberWithDouble:self.longitude] forKey: @"longitude"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[HelloCommand class]]) {
    return NO;
  }
  HelloCommand *otherMessage = other;
  return
      self.hasVersion == otherMessage.hasVersion &&
      (!self.hasVersion || self.version == otherMessage.version) &&
      self.hasNodeId == otherMessage.hasNodeId &&
      (!self.hasNodeId || self.nodeId == otherMessage.nodeId) &&
      self.hasLatitude == otherMessage.hasLatitude &&
      (!self.hasLatitude || self.latitude == otherMessage.latitude) &&
      self.hasLongitude == otherMessage.hasLongitude &&
      (!self.hasLongitude || self.longitude == otherMessage.longitude) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasVersion) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.version] hash];
  }
  if (self.hasNodeId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.nodeId] hash];
  }
  if (self.hasLatitude) {
    hashCode = hashCode * 31 + [[NSNumber numberWithDouble:self.latitude] hash];
  }
  if (self.hasLongitude) {
    hashCode = hashCode * 31 + [[NSNumber numberWithDouble:self.longitude] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface HelloCommandBuilder()
@property (strong) HelloCommand* resultHelloCommand;
@end

@implementation HelloCommandBuilder
@synthesize resultHelloCommand;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultHelloCommand = [[HelloCommand alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultHelloCommand;
}
- (HelloCommandBuilder*) clear {
  self.resultHelloCommand = [[HelloCommand alloc] init];
  return self;
}
- (HelloCommandBuilder*) clone {
  return [HelloCommand builderWithPrototype:resultHelloCommand];
}
- (HelloCommand*) defaultInstance {
  return [HelloCommand defaultInstance];
}
- (HelloCommand*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (HelloCommand*) buildPartial {
  HelloCommand* returnMe = resultHelloCommand;
  self.resultHelloCommand = nil;
  return returnMe;
}
- (HelloCommandBuilder*) mergeFrom:(HelloCommand*) other {
  if (other == [HelloCommand defaultInstance]) {
    return self;
  }
  if (other.hasVersion) {
    [self setVersion:other.version];
  }
  if (other.hasNodeId) {
    [self setNodeId:other.nodeId];
  }
  if (other.hasLatitude) {
    [self setLatitude:other.latitude];
  }
  if (other.hasLongitude) {
    [self setLongitude:other.longitude];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (HelloCommandBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (HelloCommandBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setVersion:[input readInt32]];
        break;
      }
      case 16: {
        [self setNodeId:[input readInt64]];
        break;
      }
      case 25: {
        [self setLatitude:[input readDouble]];
        break;
      }
      case 33: {
        [self setLongitude:[input readDouble]];
        break;
      }
    }
  }
}
- (BOOL) hasVersion {
  return resultHelloCommand.hasVersion;
}
- (SInt32) version {
  return resultHelloCommand.version;
}
- (HelloCommandBuilder*) setVersion:(SInt32) value {
  resultHelloCommand.hasVersion = YES;
  resultHelloCommand.version = value;
  return self;
}
- (HelloCommandBuilder*) clearVersion {
  resultHelloCommand.hasVersion = NO;
  resultHelloCommand.version = 0;
  return self;
}
- (BOOL) hasNodeId {
  return resultHelloCommand.hasNodeId;
}
- (SInt64) nodeId {
  return resultHelloCommand.nodeId;
}
- (HelloCommandBuilder*) setNodeId:(SInt64) value {
  resultHelloCommand.hasNodeId = YES;
  resultHelloCommand.nodeId = value;
  return self;
}
- (HelloCommandBuilder*) clearNodeId {
  resultHelloCommand.hasNodeId = NO;
  resultHelloCommand.nodeId = 0L;
  return self;
}
- (BOOL) hasLatitude {
  return resultHelloCommand.hasLatitude;
}
- (Float64) latitude {
  return resultHelloCommand.latitude;
}
- (HelloCommandBuilder*) setLatitude:(Float64) value {
  resultHelloCommand.hasLatitude = YES;
  resultHelloCommand.latitude = value;
  return self;
}
- (HelloCommandBuilder*) clearLatitude {
  resultHelloCommand.hasLatitude = NO;
  resultHelloCommand.latitude = 0;
  return self;
}
- (BOOL) hasLongitude {
  return resultHelloCommand.hasLongitude;
}
- (Float64) longitude {
  return resultHelloCommand.longitude;
}
- (HelloCommandBuilder*) setLongitude:(Float64) value {
  resultHelloCommand.hasLongitude = YES;
  resultHelloCommand.longitude = value;
  return self;
}
- (HelloCommandBuilder*) clearLongitude {
  resultHelloCommand.hasLongitude = NO;
  resultHelloCommand.longitude = 0;
  return self;
}
@end

@interface SignalCommand ()
@property SInt64 nodeId;
@property (strong) NSData* data;
@end

@implementation SignalCommand

- (BOOL) hasNodeId {
  return !!hasNodeId_;
}
- (void) setHasNodeId:(BOOL) _value_ {
  hasNodeId_ = !!_value_;
}
@synthesize nodeId;
- (BOOL) hasData {
  return !!hasData_;
}
- (void) setHasData:(BOOL) _value_ {
  hasData_ = !!_value_;
}
@synthesize data;
- (instancetype) init {
  if ((self = [super init])) {
    self.nodeId = 0L;
    self.data = [NSData data];
  }
  return self;
}
static SignalCommand* defaultSignalCommandInstance = nil;
+ (void) initialize {
  if (self == [SignalCommand class]) {
    defaultSignalCommandInstance = [[SignalCommand alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultSignalCommandInstance;
}
- (instancetype) defaultInstance {
  return defaultSignalCommandInstance;
}
- (BOOL) isInitialized {
  if (!self.hasNodeId) {
    return NO;
  }
  if (!self.hasData) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasNodeId) {
    [output writeInt64:1 value:self.nodeId];
  }
  if (self.hasData) {
    [output writeData:2 value:self.data];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasNodeId) {
    size_ += computeInt64Size(1, self.nodeId);
  }
  if (self.hasData) {
    size_ += computeDataSize(2, self.data);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (SignalCommand*) parseFromData:(NSData*) data {
  return (SignalCommand*)[[[SignalCommand builder] mergeFromData:data] build];
}
+ (SignalCommand*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SignalCommand*)[[[SignalCommand builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (SignalCommand*) parseFromInputStream:(NSInputStream*) input {
  return (SignalCommand*)[[[SignalCommand builder] mergeFromInputStream:input] build];
}
+ (SignalCommand*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SignalCommand*)[[[SignalCommand builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (SignalCommand*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (SignalCommand*)[[[SignalCommand builder] mergeFromCodedInputStream:input] build];
}
+ (SignalCommand*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SignalCommand*)[[[SignalCommand builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (SignalCommandBuilder*) builder {
  return [[SignalCommandBuilder alloc] init];
}
+ (SignalCommandBuilder*) builderWithPrototype:(SignalCommand*) prototype {
  return [[SignalCommand builder] mergeFrom:prototype];
}
- (SignalCommandBuilder*) builder {
  return [SignalCommand builder];
}
- (SignalCommandBuilder*) toBuilder {
  return [SignalCommand builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasNodeId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"nodeId", [NSNumber numberWithLongLong:self.nodeId]];
  }
  if (self.hasData) {
    [output appendFormat:@"%@%@: %@\n", indent, @"data", self.data];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasNodeId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.nodeId] forKey: @"nodeId"];
  }
  if (self.hasData) {
    [dictionary setObject: self.data forKey: @"data"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[SignalCommand class]]) {
    return NO;
  }
  SignalCommand *otherMessage = other;
  return
      self.hasNodeId == otherMessage.hasNodeId &&
      (!self.hasNodeId || self.nodeId == otherMessage.nodeId) &&
      self.hasData == otherMessage.hasData &&
      (!self.hasData || [self.data isEqual:otherMessage.data]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasNodeId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.nodeId] hash];
  }
  if (self.hasData) {
    hashCode = hashCode * 31 + [self.data hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface SignalCommandBuilder()
@property (strong) SignalCommand* resultSignalCommand;
@end

@implementation SignalCommandBuilder
@synthesize resultSignalCommand;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultSignalCommand = [[SignalCommand alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultSignalCommand;
}
- (SignalCommandBuilder*) clear {
  self.resultSignalCommand = [[SignalCommand alloc] init];
  return self;
}
- (SignalCommandBuilder*) clone {
  return [SignalCommand builderWithPrototype:resultSignalCommand];
}
- (SignalCommand*) defaultInstance {
  return [SignalCommand defaultInstance];
}
- (SignalCommand*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (SignalCommand*) buildPartial {
  SignalCommand* returnMe = resultSignalCommand;
  self.resultSignalCommand = nil;
  return returnMe;
}
- (SignalCommandBuilder*) mergeFrom:(SignalCommand*) other {
  if (other == [SignalCommand defaultInstance]) {
    return self;
  }
  if (other.hasNodeId) {
    [self setNodeId:other.nodeId];
  }
  if (other.hasData) {
    [self setData:other.data];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (SignalCommandBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (SignalCommandBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setNodeId:[input readInt64]];
        break;
      }
      case 18: {
        [self setData:[input readData]];
        break;
      }
    }
  }
}
- (BOOL) hasNodeId {
  return resultSignalCommand.hasNodeId;
}
- (SInt64) nodeId {
  return resultSignalCommand.nodeId;
}
- (SignalCommandBuilder*) setNodeId:(SInt64) value {
  resultSignalCommand.hasNodeId = YES;
  resultSignalCommand.nodeId = value;
  return self;
}
- (SignalCommandBuilder*) clearNodeId {
  resultSignalCommand.hasNodeId = NO;
  resultSignalCommand.nodeId = 0L;
  return self;
}
- (BOOL) hasData {
  return resultSignalCommand.hasData;
}
- (NSData*) data {
  return resultSignalCommand.data;
}
- (SignalCommandBuilder*) setData:(NSData*) value {
  resultSignalCommand.hasData = YES;
  resultSignalCommand.data = value;
  return self;
}
- (SignalCommandBuilder*) clearData {
  resultSignalCommand.hasData = NO;
  resultSignalCommand.data = [NSData data];
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
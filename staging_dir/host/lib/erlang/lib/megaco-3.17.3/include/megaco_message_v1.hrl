%%<copyright>
%% <year>2000-2008</year>
%% <holder>Ericsson AB, All Rights Reserved</holder>
%%</copyright>
%%<legalnotice>
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% The Initial Developer of the Original Code is Ericsson AB.
%%</legalnotice>
%%
%%----------------------------------------------------------------------
%% Generated by the Erlang ASN.1 compiler version:1.2.7
%% Purpose: Erlang record definitions for each named and unnamed
%%          SEQUENCE and SET in module MEDIA-GATEWAY-CONTROL
%%----------------------------------------------------------------------

-record('MegacoMessage',
	{
	  authHeader = asn1_NOVALUE,
	  mess
	 }).

-record('AuthenticationHeader',
	{
	  secParmIndex, 
	  seqNum, 
	  ad
	 }).

-record('Message',
	{
	  version, 
	  mId, 
	  messageBody
	 }). % with extension mark

-record('DomainName',
	{
	  name, 
	  portNumber = asn1_NOVALUE
	 }).

-record('IP4Address',
	{
	  address,
	  portNumber = asn1_NOVALUE
	 }).

-record('IP6Address',
	{
	  address, 
	  portNumber = asn1_NOVALUE
	 }).

-record('TransactionRequest',
	{
	  transactionId, 
	  actions = []
	 }). % with extension mark

-record('TransactionPending',
	{
	  transactionId
	 }). % with extension mark

-record('TransactionReply',
	{
	  transactionId, 
	  immAckRequired = asn1_NOVALUE, 
	  transactionResult
	 }). % with extension mark

-record('TransactionAck',
	{
	  firstAck, 
	  lastAck = asn1_NOVALUE
	 }).

-record('ErrorDescriptor',
	{
	  errorCode, 
	  errorText = asn1_NOVALUE
	 }).

-record('ActionRequest',
	{
	  contextId, 
	  contextRequest = asn1_NOVALUE, 
	  contextAttrAuditReq = asn1_NOVALUE, 
	  commandRequests = []
	 }).

-record('ActionReply',
	{
	  contextId, 
	  errorDescriptor = asn1_NOVALUE, 
	  contextReply = asn1_NOVALUE, 
	  commandReply = []
	 }).

-record('ContextRequest',
	{
	  priority = asn1_NOVALUE, 
	  emergency = asn1_NOVALUE, 
	  topologyReq = asn1_NOVALUE
	 }). % with extension mark

-record('ContextAttrAuditRequest',
	{
	  topology = asn1_NOVALUE, 
	  emergency = asn1_NOVALUE, 
	  priority = asn1_NOVALUE
	 }). % with extension mark

-record('CommandRequest',
	{
	  command, 
	  optional = asn1_NOVALUE, 
	  wildcardReturn = asn1_NOVALUE
	 }). % with extension mark

-record('TopologyRequest',
	{
	  terminationFrom, 
	  terminationTo, 
	  topologyDirection
	 }).

-record('AmmRequest',
	{
	  terminationID = [], 
	  descriptors = []
	 }). % with extension mark

-record('AmmsReply',
	{
	  terminationID = [], 
	  terminationAudit = asn1_NOVALUE
	 }). % with extension mark

-record('SubtractRequest',
	{
	  terminationID = [], 
	  auditDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('AuditRequest',
	{
	  terminationID, 
	  auditDescriptor
	 }). % with extension mark

-record('AuditResult',
	{
	  terminationID, 
	  terminationAuditResult = []
	 }).

-record('AuditDescriptor',
	{
	  auditToken = asn1_NOVALUE
	 }). % with extension mark

-record('NotifyRequest',
	{
	  terminationID = [], 
	  observedEventsDescriptor, 
	  errorDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('NotifyReply',
	{
	  terminationID   = [], 
	  errorDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('ObservedEventsDescriptor',
	{
	  requestId, 
	  observedEventLst = []
	 }).

-record('ObservedEvent',
	{
	  eventName, 
	  streamID = asn1_NOVALUE, 
	  eventParList = [], 
	  timeNotation = asn1_NOVALUE
	 }). % with extension mark

%% This value field of this record is already encoded and will
%% be inserted as is.
%% This record could be used either when there is a bug in the
%% encoder or if an "external" package, unknown to the megaco app,
%% where the value part requires a special encode.
-record(megaco_event_parameter,
	{
	  name, 
	  value
	 }). 

-record('EventParameter',
	{
	  eventParameterName, 
	  value,
	  extraInfo = asn1_NOVALUE
	 }). % with extension mark

-record('ServiceChangeRequest',
	{
	  terminationID = [], 
	  serviceChangeParms
	 }). % with extension mark

-record('ServiceChangeReply',
	{
	  terminationID = [], 
	  serviceChangeResult = []
	 }). % with extension mark

-record('TerminationID',
	{
	  wildcard, 
	  id
	 }). % with extension mark

-record('MediaDescriptor',
	{
	  termStateDescr = asn1_NOVALUE, 
	  streams        = asn1_NOVALUE
	 }). % with extension mark

-record('StreamDescriptor',
	{
	  streamID, 
	  streamParms
	 }).

-record('StreamParms',
	{
	  localControlDescriptor = asn1_NOVALUE, 
	  localDescriptor = asn1_NOVALUE, 
	  remoteDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('LocalControlDescriptor',
	{
	  streamMode   = asn1_NOVALUE, 
	  reserveValue = asn1_NOVALUE, 
	  reserveGroup = asn1_NOVALUE, 
	  propertyParms = []
	 }). % with extension mark

-record('PropertyParm',
	{
	  name, 
	  value, 
	  extraInfo = asn1_NOVALUE
	 }). % with extension mark

-record('LocalRemoteDescriptor',
	{
	  propGrps = []
	 }). % with extension mark

-record('TerminationStateDescriptor',
	{
	  propertyParms = [], 
	  eventBufferControl = asn1_NOVALUE, 
	  serviceState = asn1_NOVALUE
	 }). % with extension mark

-record('MuxDescriptor',
	{
	  muxType, 
	  termList = [],
	  nonStandardData = asn1_NOVALUE
	 }). % with extension mark

-record('EventsDescriptor',
	{
	  requestID = asn1_NOVALUE,
	  eventList = []
	 }). % with extension mark

-record('RequestedEvent',
	{
	  pkgdName, 
	  streamID = asn1_NOVALUE, 
	  eventAction = asn1_NOVALUE, 
	  evParList = []
	 }). % with extension mark

-record('RequestedActions',
	{
	  keepActive = asn1_NOVALUE, 
	  eventDM = asn1_NOVALUE, 
	  secondEvent = asn1_NOVALUE, 
	  signalsDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('SecondEventsDescriptor',
	{
	  requestID = asn1_NOVALUE, 
	  eventList = []
	 }). % with extension mark

-record('SecondRequestedEvent',
	{
	  pkgdName, 
	  streamID = asn1_NOVALUE, 
	  eventAction = asn1_NOVALUE, 
	  evParList = []
	 }). % with extension mark

-record('SecondRequestedActions',
	{
	  keepActive = asn1_NOVALUE, 
	  eventDM = asn1_NOVALUE, 
	  signalsDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('EventSpec',
	{
	  eventName, 
	  streamID = asn1_NOVALUE, 
	  eventParList = []
	 }). % with extension mark

-record('SeqSigList',
	{
	  id, 
	  signalList = []
	 }).

-record('Signal',
	{
	  signalName, 
	  streamID = asn1_NOVALUE, 
	  sigType = asn1_NOVALUE, 
	  duration = asn1_NOVALUE, 
	  notifyCompletion = asn1_NOVALUE, 
	  keepActive = asn1_NOVALUE, 
	  sigParList = []
	 }). % with extension mark

-record('SigParameter',
	{
	  sigParameterName, 
	  value,
	  extraInfo = asn1_NOVALUE
	 }). % with extension mark

-record('ModemDescriptor',
	{
	  mtl, 
	  mpl,
	  nonStandardData = asn1_NOVALUE
	 }).

-record('DigitMapDescriptor',
	{
	  digitMapName = asn1_NOVALUE, 
	  digitMapValue = asn1_NOVALUE
	 }).

-record('DigitMapValue',
	{
	  startTimer = asn1_NOVALUE, 
	  shortTimer = asn1_NOVALUE, 
	  longTimer = asn1_NOVALUE, 
	  digitMapBody
	 }). % with extension mark

-record('ServiceChangeParm',
	{
	  serviceChangeMethod, 
	  serviceChangeAddress = asn1_NOVALUE, 
	  serviceChangeVersion = asn1_NOVALUE, 
	  serviceChangeProfile = asn1_NOVALUE, 
	  serviceChangeReason, 
	  serviceChangeDelay = asn1_NOVALUE, 
	  serviceChangeMgcId = asn1_NOVALUE, 
	  timeStamp = asn1_NOVALUE,
	  nonStandardData = asn1_NOVALUE
	 }). % with extension mark

-record('ServiceChangeResParm',
	{
	  serviceChangeMgcId = asn1_NOVALUE, 
	  serviceChangeAddress = asn1_NOVALUE, 
	  serviceChangeVersion = asn1_NOVALUE, 
	  serviceChangeProfile = asn1_NOVALUE,
	  timeStamp = asn1_NOVALUE
	 }). % with extension mark

%% This is the actual ASN.1 type and it is as this it will
%% be represented if the encoding config [native] is chosen.
% %% String of at least 1 character and at most 67 characters (ASN.1). 
% %% 64 characters for name, 1 for "/", 2 for version to match ABNF
% -record('ServiceChangeProfile',
% 	{
% 	  profileName
% 	 }
%        ).

-record('ServiceChangeProfile',
	{
	  profileName, 
	  version
	 }).

-record('PackagesItem',
	{
	  packageName, 
	  packageVersion
	 }). % with extension mark

-record('StatisticsParameter',
	{
	  statName, 
	  statValue = asn1_NOVALUE
	 }).

-record('TimeNotation',
	{
	  date, 
	  time
	 }).


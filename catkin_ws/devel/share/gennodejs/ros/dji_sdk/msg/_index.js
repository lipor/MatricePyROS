
"use strict";

let MissionEventWpUpload = require('./MissionEventWpUpload.js');
let TransparentTransmissionData = require('./TransparentTransmissionData.js');
let Velocity = require('./Velocity.js');
let LocalPosition = require('./LocalPosition.js');
let Waypoint = require('./Waypoint.js');
let FlightControlInfo = require('./FlightControlInfo.js');
let Acceleration = require('./Acceleration.js');
let MissionFollowmeTarget = require('./MissionFollowmeTarget.js');
let RCChannels = require('./RCChannels.js');
let AttitudeQuaternion = require('./AttitudeQuaternion.js');
let MissionStatusOther = require('./MissionStatusOther.js');
let MissionStatusFollowme = require('./MissionStatusFollowme.js');
let A3GPS = require('./A3GPS.js');
let MissionStatusWaypoint = require('./MissionStatusWaypoint.js');
let MissionFollowmeTask = require('./MissionFollowmeTask.js');
let WaypointList = require('./WaypointList.js');
let MissionStatusHotpoint = require('./MissionStatusHotpoint.js');
let MissionWaypointTask = require('./MissionWaypointTask.js');
let MissionPushInfo = require('./MissionPushInfo.js');
let Compass = require('./Compass.js');
let PowerStatus = require('./PowerStatus.js');
let MissionEventWpAction = require('./MissionEventWpAction.js');
let Gimbal = require('./Gimbal.js');
let GlobalPosition = require('./GlobalPosition.js');
let MissionHotpointTask = require('./MissionHotpointTask.js');
let MissionWaypointAction = require('./MissionWaypointAction.js');
let MissionWaypoint = require('./MissionWaypoint.js');
let TimeStamp = require('./TimeStamp.js');
let A3RTK = require('./A3RTK.js');
let MissionEventWpReach = require('./MissionEventWpReach.js');
let WaypointNavigationGoal = require('./WaypointNavigationGoal.js');
let GlobalPositionNavigationResult = require('./GlobalPositionNavigationResult.js');
let GlobalPositionNavigationActionResult = require('./GlobalPositionNavigationActionResult.js');
let WaypointNavigationActionGoal = require('./WaypointNavigationActionGoal.js');
let DroneTaskActionGoal = require('./DroneTaskActionGoal.js');
let WaypointNavigationFeedback = require('./WaypointNavigationFeedback.js');
let LocalPositionNavigationResult = require('./LocalPositionNavigationResult.js');
let GlobalPositionNavigationGoal = require('./GlobalPositionNavigationGoal.js');
let WaypointNavigationActionResult = require('./WaypointNavigationActionResult.js');
let GlobalPositionNavigationFeedback = require('./GlobalPositionNavigationFeedback.js');
let LocalPositionNavigationActionFeedback = require('./LocalPositionNavigationActionFeedback.js');
let LocalPositionNavigationFeedback = require('./LocalPositionNavigationFeedback.js');
let DroneTaskFeedback = require('./DroneTaskFeedback.js');
let DroneTaskAction = require('./DroneTaskAction.js');
let GlobalPositionNavigationActionGoal = require('./GlobalPositionNavigationActionGoal.js');
let WaypointNavigationResult = require('./WaypointNavigationResult.js');
let LocalPositionNavigationAction = require('./LocalPositionNavigationAction.js');
let DroneTaskGoal = require('./DroneTaskGoal.js');
let LocalPositionNavigationActionGoal = require('./LocalPositionNavigationActionGoal.js');
let LocalPositionNavigationActionResult = require('./LocalPositionNavigationActionResult.js');
let GlobalPositionNavigationActionFeedback = require('./GlobalPositionNavigationActionFeedback.js');
let DroneTaskResult = require('./DroneTaskResult.js');
let WaypointNavigationAction = require('./WaypointNavigationAction.js');
let DroneTaskActionResult = require('./DroneTaskActionResult.js');
let GlobalPositionNavigationAction = require('./GlobalPositionNavigationAction.js');
let DroneTaskActionFeedback = require('./DroneTaskActionFeedback.js');
let LocalPositionNavigationGoal = require('./LocalPositionNavigationGoal.js');
let WaypointNavigationActionFeedback = require('./WaypointNavigationActionFeedback.js');

module.exports = {
  MissionEventWpUpload: MissionEventWpUpload,
  TransparentTransmissionData: TransparentTransmissionData,
  Velocity: Velocity,
  LocalPosition: LocalPosition,
  Waypoint: Waypoint,
  FlightControlInfo: FlightControlInfo,
  Acceleration: Acceleration,
  MissionFollowmeTarget: MissionFollowmeTarget,
  RCChannels: RCChannels,
  AttitudeQuaternion: AttitudeQuaternion,
  MissionStatusOther: MissionStatusOther,
  MissionStatusFollowme: MissionStatusFollowme,
  A3GPS: A3GPS,
  MissionStatusWaypoint: MissionStatusWaypoint,
  MissionFollowmeTask: MissionFollowmeTask,
  WaypointList: WaypointList,
  MissionStatusHotpoint: MissionStatusHotpoint,
  MissionWaypointTask: MissionWaypointTask,
  MissionPushInfo: MissionPushInfo,
  Compass: Compass,
  PowerStatus: PowerStatus,
  MissionEventWpAction: MissionEventWpAction,
  Gimbal: Gimbal,
  GlobalPosition: GlobalPosition,
  MissionHotpointTask: MissionHotpointTask,
  MissionWaypointAction: MissionWaypointAction,
  MissionWaypoint: MissionWaypoint,
  TimeStamp: TimeStamp,
  A3RTK: A3RTK,
  MissionEventWpReach: MissionEventWpReach,
  WaypointNavigationGoal: WaypointNavigationGoal,
  GlobalPositionNavigationResult: GlobalPositionNavigationResult,
  GlobalPositionNavigationActionResult: GlobalPositionNavigationActionResult,
  WaypointNavigationActionGoal: WaypointNavigationActionGoal,
  DroneTaskActionGoal: DroneTaskActionGoal,
  WaypointNavigationFeedback: WaypointNavigationFeedback,
  LocalPositionNavigationResult: LocalPositionNavigationResult,
  GlobalPositionNavigationGoal: GlobalPositionNavigationGoal,
  WaypointNavigationActionResult: WaypointNavigationActionResult,
  GlobalPositionNavigationFeedback: GlobalPositionNavigationFeedback,
  LocalPositionNavigationActionFeedback: LocalPositionNavigationActionFeedback,
  LocalPositionNavigationFeedback: LocalPositionNavigationFeedback,
  DroneTaskFeedback: DroneTaskFeedback,
  DroneTaskAction: DroneTaskAction,
  GlobalPositionNavigationActionGoal: GlobalPositionNavigationActionGoal,
  WaypointNavigationResult: WaypointNavigationResult,
  LocalPositionNavigationAction: LocalPositionNavigationAction,
  DroneTaskGoal: DroneTaskGoal,
  LocalPositionNavigationActionGoal: LocalPositionNavigationActionGoal,
  LocalPositionNavigationActionResult: LocalPositionNavigationActionResult,
  GlobalPositionNavigationActionFeedback: GlobalPositionNavigationActionFeedback,
  DroneTaskResult: DroneTaskResult,
  WaypointNavigationAction: WaypointNavigationAction,
  DroneTaskActionResult: DroneTaskActionResult,
  GlobalPositionNavigationAction: GlobalPositionNavigationAction,
  DroneTaskActionFeedback: DroneTaskActionFeedback,
  LocalPositionNavigationGoal: LocalPositionNavigationGoal,
  WaypointNavigationActionFeedback: WaypointNavigationActionFeedback,
};

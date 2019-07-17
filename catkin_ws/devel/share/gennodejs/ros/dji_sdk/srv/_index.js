
"use strict";

let CameraActionControl = require('./CameraActionControl.js')
let MissionStart = require('./MissionStart.js')
let MissionWpDownload = require('./MissionWpDownload.js')
let MissionWpUpload = require('./MissionWpUpload.js')
let MissionWpSetSpeed = require('./MissionWpSetSpeed.js')
let VirtualRCDataControl = require('./VirtualRCDataControl.js')
let VirtualRCEnableControl = require('./VirtualRCEnableControl.js')
let DroneArmControl = require('./DroneArmControl.js')
let MissionFmSetTarget = require('./MissionFmSetTarget.js')
let MissionCancel = require('./MissionCancel.js')
let MissionHpDownload = require('./MissionHpDownload.js')
let Activation = require('./Activation.js')
let DroneTaskControl = require('./DroneTaskControl.js')
let MessageFrequencyControl = require('./MessageFrequencyControl.js')
let GimbalSpeedControl = require('./GimbalSpeedControl.js')
let VersionCheck = require('./VersionCheck.js')
let MissionFmUpload = require('./MissionFmUpload.js')
let SDKPermissionControl = require('./SDKPermissionControl.js')
let GimbalAngleControl = require('./GimbalAngleControl.js')
let MissionHpUpload = require('./MissionHpUpload.js')
let MissionPause = require('./MissionPause.js')
let MissionHpResetYaw = require('./MissionHpResetYaw.js')
let SyncFlagControl = require('./SyncFlagControl.js')
let MissionWpGetSpeed = require('./MissionWpGetSpeed.js')
let SendDataToRemoteDevice = require('./SendDataToRemoteDevice.js')
let AttitudeControl = require('./AttitudeControl.js')
let LocalPositionControl = require('./LocalPositionControl.js')
let MissionHpSetRadius = require('./MissionHpSetRadius.js')
let GlobalPositionControl = require('./GlobalPositionControl.js')
let VelocityControl = require('./VelocityControl.js')
let MissionHpSetSpeed = require('./MissionHpSetSpeed.js')

module.exports = {
  CameraActionControl: CameraActionControl,
  MissionStart: MissionStart,
  MissionWpDownload: MissionWpDownload,
  MissionWpUpload: MissionWpUpload,
  MissionWpSetSpeed: MissionWpSetSpeed,
  VirtualRCDataControl: VirtualRCDataControl,
  VirtualRCEnableControl: VirtualRCEnableControl,
  DroneArmControl: DroneArmControl,
  MissionFmSetTarget: MissionFmSetTarget,
  MissionCancel: MissionCancel,
  MissionHpDownload: MissionHpDownload,
  Activation: Activation,
  DroneTaskControl: DroneTaskControl,
  MessageFrequencyControl: MessageFrequencyControl,
  GimbalSpeedControl: GimbalSpeedControl,
  VersionCheck: VersionCheck,
  MissionFmUpload: MissionFmUpload,
  SDKPermissionControl: SDKPermissionControl,
  GimbalAngleControl: GimbalAngleControl,
  MissionHpUpload: MissionHpUpload,
  MissionPause: MissionPause,
  MissionHpResetYaw: MissionHpResetYaw,
  SyncFlagControl: SyncFlagControl,
  MissionWpGetSpeed: MissionWpGetSpeed,
  SendDataToRemoteDevice: SendDataToRemoteDevice,
  AttitudeControl: AttitudeControl,
  LocalPositionControl: LocalPositionControl,
  MissionHpSetRadius: MissionHpSetRadius,
  GlobalPositionControl: GlobalPositionControl,
  VelocityControl: VelocityControl,
  MissionHpSetSpeed: MissionHpSetSpeed,
};

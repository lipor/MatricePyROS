// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MissionWaypointTask = require('../msg/MissionWaypointTask.js');

//-----------------------------------------------------------

class MissionWpDownloadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWpDownloadRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWpDownloadRequest
    let len;
    let data = new MissionWpDownloadRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpDownloadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionWpDownloadRequest(null);
    return resolved;
    }
};

class MissionWpDownloadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_task = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_task')) {
        this.waypoint_task = initObj.waypoint_task
      }
      else {
        this.waypoint_task = new MissionWaypointTask();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWpDownloadResponse
    // Serialize message field [waypoint_task]
    bufferOffset = MissionWaypointTask.serialize(obj.waypoint_task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWpDownloadResponse
    let len;
    let data = new MissionWpDownloadResponse(null);
    // Deserialize message field [waypoint_task]
    data.waypoint_task = MissionWaypointTask.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MissionWaypointTask.getMessageSize(object.waypoint_task);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpDownloadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c965e82a72d204e1e6d1e75389efb89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionWaypointTask waypoint_task
    
    
    ================================================================================
    MSG: dji_sdk/MissionWaypointTask
    float32 velocity_range
    float32 idle_velocity
    uint8 action_on_finish
    uint8 mission_exec_times
    uint8 yaw_mode
    uint8 trace_mode
    uint8 action_on_rc_lost
    uint8 gimbal_pitch_mode
    MissionWaypoint[] mission_waypoint
    
    ================================================================================
    MSG: dji_sdk/MissionWaypoint
    float64 latitude
    float64 longitude
    float32 altitude
    float32 damping_distance
    int16 target_yaw
    int16 target_gimbal_pitch
    uint8 turn_mode
    uint8 has_action
    uint16 action_time_limit
    MissionWaypointAction waypoint_action
    
    ================================================================================
    MSG: dji_sdk/MissionWaypointAction
    uint8 action_repeat
    uint8[15] command_list
    int16[15] command_parameter
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionWpDownloadResponse(null);
    if (msg.waypoint_task !== undefined) {
      resolved.waypoint_task = MissionWaypointTask.Resolve(msg.waypoint_task)
    }
    else {
      resolved.waypoint_task = new MissionWaypointTask()
    }

    return resolved;
    }
};

module.exports = {
  Request: MissionWpDownloadRequest,
  Response: MissionWpDownloadResponse,
  md5sum() { return '7c965e82a72d204e1e6d1e75389efb89'; },
  datatype() { return 'dji_sdk/MissionWpDownload'; }
};

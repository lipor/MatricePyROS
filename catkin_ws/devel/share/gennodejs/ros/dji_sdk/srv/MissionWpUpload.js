// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionWaypointTask = require('../msg/MissionWaypointTask.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionWpUploadRequest {
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
    // Serializes a message object of type MissionWpUploadRequest
    // Serialize message field [waypoint_task]
    bufferOffset = MissionWaypointTask.serialize(obj.waypoint_task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWpUploadRequest
    let len;
    let data = new MissionWpUploadRequest(null);
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
    return 'dji_sdk/MissionWpUploadRequest';
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
    const resolved = new MissionWpUploadRequest(null);
    if (msg.waypoint_task !== undefined) {
      resolved.waypoint_task = MissionWaypointTask.Resolve(msg.waypoint_task)
    }
    else {
      resolved.waypoint_task = new MissionWaypointTask()
    }

    return resolved;
    }
};

class MissionWpUploadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWpUploadResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWpUploadResponse
    let len;
    let data = new MissionWpUploadResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpUploadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionWpUploadResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MissionWpUploadRequest,
  Response: MissionWpUploadResponse,
  md5sum() { return 'ce0a38f3621e16d1b7a2d33b72384b5d'; },
  datatype() { return 'dji_sdk/MissionWpUpload'; }
};

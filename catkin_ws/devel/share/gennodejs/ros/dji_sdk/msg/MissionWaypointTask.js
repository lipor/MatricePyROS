// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionWaypoint = require('./MissionWaypoint.js');

//-----------------------------------------------------------

class MissionWaypointTask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity_range = null;
      this.idle_velocity = null;
      this.action_on_finish = null;
      this.mission_exec_times = null;
      this.yaw_mode = null;
      this.trace_mode = null;
      this.action_on_rc_lost = null;
      this.gimbal_pitch_mode = null;
      this.mission_waypoint = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity_range')) {
        this.velocity_range = initObj.velocity_range
      }
      else {
        this.velocity_range = 0.0;
      }
      if (initObj.hasOwnProperty('idle_velocity')) {
        this.idle_velocity = initObj.idle_velocity
      }
      else {
        this.idle_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('action_on_finish')) {
        this.action_on_finish = initObj.action_on_finish
      }
      else {
        this.action_on_finish = 0;
      }
      if (initObj.hasOwnProperty('mission_exec_times')) {
        this.mission_exec_times = initObj.mission_exec_times
      }
      else {
        this.mission_exec_times = 0;
      }
      if (initObj.hasOwnProperty('yaw_mode')) {
        this.yaw_mode = initObj.yaw_mode
      }
      else {
        this.yaw_mode = 0;
      }
      if (initObj.hasOwnProperty('trace_mode')) {
        this.trace_mode = initObj.trace_mode
      }
      else {
        this.trace_mode = 0;
      }
      if (initObj.hasOwnProperty('action_on_rc_lost')) {
        this.action_on_rc_lost = initObj.action_on_rc_lost
      }
      else {
        this.action_on_rc_lost = 0;
      }
      if (initObj.hasOwnProperty('gimbal_pitch_mode')) {
        this.gimbal_pitch_mode = initObj.gimbal_pitch_mode
      }
      else {
        this.gimbal_pitch_mode = 0;
      }
      if (initObj.hasOwnProperty('mission_waypoint')) {
        this.mission_waypoint = initObj.mission_waypoint
      }
      else {
        this.mission_waypoint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWaypointTask
    // Serialize message field [velocity_range]
    bufferOffset = _serializer.float32(obj.velocity_range, buffer, bufferOffset);
    // Serialize message field [idle_velocity]
    bufferOffset = _serializer.float32(obj.idle_velocity, buffer, bufferOffset);
    // Serialize message field [action_on_finish]
    bufferOffset = _serializer.uint8(obj.action_on_finish, buffer, bufferOffset);
    // Serialize message field [mission_exec_times]
    bufferOffset = _serializer.uint8(obj.mission_exec_times, buffer, bufferOffset);
    // Serialize message field [yaw_mode]
    bufferOffset = _serializer.uint8(obj.yaw_mode, buffer, bufferOffset);
    // Serialize message field [trace_mode]
    bufferOffset = _serializer.uint8(obj.trace_mode, buffer, bufferOffset);
    // Serialize message field [action_on_rc_lost]
    bufferOffset = _serializer.uint8(obj.action_on_rc_lost, buffer, bufferOffset);
    // Serialize message field [gimbal_pitch_mode]
    bufferOffset = _serializer.uint8(obj.gimbal_pitch_mode, buffer, bufferOffset);
    // Serialize message field [mission_waypoint]
    // Serialize the length for message field [mission_waypoint]
    bufferOffset = _serializer.uint32(obj.mission_waypoint.length, buffer, bufferOffset);
    obj.mission_waypoint.forEach((val) => {
      bufferOffset = MissionWaypoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWaypointTask
    let len;
    let data = new MissionWaypointTask(null);
    // Deserialize message field [velocity_range]
    data.velocity_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [idle_velocity]
    data.idle_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [action_on_finish]
    data.action_on_finish = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mission_exec_times]
    data.mission_exec_times = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw_mode]
    data.yaw_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [trace_mode]
    data.trace_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [action_on_rc_lost]
    data.action_on_rc_lost = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gimbal_pitch_mode]
    data.gimbal_pitch_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mission_waypoint]
    // Deserialize array length for message field [mission_waypoint]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mission_waypoint = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mission_waypoint[i] = MissionWaypoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 78 * object.mission_waypoint.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionWaypointTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a81a8c039337b422bde8ccc87d96c14b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MissionWaypointTask(null);
    if (msg.velocity_range !== undefined) {
      resolved.velocity_range = msg.velocity_range;
    }
    else {
      resolved.velocity_range = 0.0
    }

    if (msg.idle_velocity !== undefined) {
      resolved.idle_velocity = msg.idle_velocity;
    }
    else {
      resolved.idle_velocity = 0.0
    }

    if (msg.action_on_finish !== undefined) {
      resolved.action_on_finish = msg.action_on_finish;
    }
    else {
      resolved.action_on_finish = 0
    }

    if (msg.mission_exec_times !== undefined) {
      resolved.mission_exec_times = msg.mission_exec_times;
    }
    else {
      resolved.mission_exec_times = 0
    }

    if (msg.yaw_mode !== undefined) {
      resolved.yaw_mode = msg.yaw_mode;
    }
    else {
      resolved.yaw_mode = 0
    }

    if (msg.trace_mode !== undefined) {
      resolved.trace_mode = msg.trace_mode;
    }
    else {
      resolved.trace_mode = 0
    }

    if (msg.action_on_rc_lost !== undefined) {
      resolved.action_on_rc_lost = msg.action_on_rc_lost;
    }
    else {
      resolved.action_on_rc_lost = 0
    }

    if (msg.gimbal_pitch_mode !== undefined) {
      resolved.gimbal_pitch_mode = msg.gimbal_pitch_mode;
    }
    else {
      resolved.gimbal_pitch_mode = 0
    }

    if (msg.mission_waypoint !== undefined) {
      resolved.mission_waypoint = new Array(msg.mission_waypoint.length);
      for (let i = 0; i < resolved.mission_waypoint.length; ++i) {
        resolved.mission_waypoint[i] = MissionWaypoint.Resolve(msg.mission_waypoint[i]);
      }
    }
    else {
      resolved.mission_waypoint = []
    }

    return resolved;
    }
};

module.exports = MissionWaypointTask;

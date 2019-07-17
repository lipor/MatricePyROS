// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MissionStatusWaypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_type = null;
      this.target_waypoint = null;
      this.current_status = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_type')) {
        this.mission_type = initObj.mission_type
      }
      else {
        this.mission_type = 0;
      }
      if (initObj.hasOwnProperty('target_waypoint')) {
        this.target_waypoint = initObj.target_waypoint
      }
      else {
        this.target_waypoint = 0;
      }
      if (initObj.hasOwnProperty('current_status')) {
        this.current_status = initObj.current_status
      }
      else {
        this.current_status = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionStatusWaypoint
    // Serialize message field [mission_type]
    bufferOffset = _serializer.uint8(obj.mission_type, buffer, bufferOffset);
    // Serialize message field [target_waypoint]
    bufferOffset = _serializer.uint8(obj.target_waypoint, buffer, bufferOffset);
    // Serialize message field [current_status]
    bufferOffset = _serializer.uint8(obj.current_status, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionStatusWaypoint
    let len;
    let data = new MissionStatusWaypoint(null);
    // Deserialize message field [mission_type]
    data.mission_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_waypoint]
    data.target_waypoint = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_status]
    data.current_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionStatusWaypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f2b7b1e7f32be55abc541c1b7552d41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mission_type
    uint8 target_waypoint
    uint8 current_status
    uint8 error_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionStatusWaypoint(null);
    if (msg.mission_type !== undefined) {
      resolved.mission_type = msg.mission_type;
    }
    else {
      resolved.mission_type = 0
    }

    if (msg.target_waypoint !== undefined) {
      resolved.target_waypoint = msg.target_waypoint;
    }
    else {
      resolved.target_waypoint = 0
    }

    if (msg.current_status !== undefined) {
      resolved.current_status = msg.current_status;
    }
    else {
      resolved.current_status = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    return resolved;
    }
};

module.exports = MissionStatusWaypoint;

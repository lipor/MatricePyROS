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

class MissionStatusHotpoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_type = null;
      this.mission_status = null;
      this.hotpoint_radius = null;
      this.error_code = null;
      this.hotpoint_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_type')) {
        this.mission_type = initObj.mission_type
      }
      else {
        this.mission_type = 0;
      }
      if (initObj.hasOwnProperty('mission_status')) {
        this.mission_status = initObj.mission_status
      }
      else {
        this.mission_status = 0;
      }
      if (initObj.hasOwnProperty('hotpoint_radius')) {
        this.hotpoint_radius = initObj.hotpoint_radius
      }
      else {
        this.hotpoint_radius = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('hotpoint_velocity')) {
        this.hotpoint_velocity = initObj.hotpoint_velocity
      }
      else {
        this.hotpoint_velocity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionStatusHotpoint
    // Serialize message field [mission_type]
    bufferOffset = _serializer.uint8(obj.mission_type, buffer, bufferOffset);
    // Serialize message field [mission_status]
    bufferOffset = _serializer.uint8(obj.mission_status, buffer, bufferOffset);
    // Serialize message field [hotpoint_radius]
    bufferOffset = _serializer.uint16(obj.hotpoint_radius, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [hotpoint_velocity]
    bufferOffset = _serializer.uint8(obj.hotpoint_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionStatusHotpoint
    let len;
    let data = new MissionStatusHotpoint(null);
    // Deserialize message field [mission_type]
    data.mission_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mission_status]
    data.mission_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hotpoint_radius]
    data.hotpoint_radius = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hotpoint_velocity]
    data.hotpoint_velocity = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionStatusHotpoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8139577a287bd3bb109446868782e2f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mission_type
    uint8 mission_status
    uint16 hotpoint_radius
    uint8 error_code
    uint8 hotpoint_velocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionStatusHotpoint(null);
    if (msg.mission_type !== undefined) {
      resolved.mission_type = msg.mission_type;
    }
    else {
      resolved.mission_type = 0
    }

    if (msg.mission_status !== undefined) {
      resolved.mission_status = msg.mission_status;
    }
    else {
      resolved.mission_status = 0
    }

    if (msg.hotpoint_radius !== undefined) {
      resolved.hotpoint_radius = msg.hotpoint_radius;
    }
    else {
      resolved.hotpoint_radius = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.hotpoint_velocity !== undefined) {
      resolved.hotpoint_velocity = msg.hotpoint_velocity;
    }
    else {
      resolved.hotpoint_velocity = 0
    }

    return resolved;
    }
};

module.exports = MissionStatusHotpoint;

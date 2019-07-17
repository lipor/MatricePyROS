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

class MissionFollowmeTask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.yaw_mode = null;
      this.initial_latitude = null;
      this.initial_longitude = null;
      this.initial_altitude = null;
      this.sensitivity = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('yaw_mode')) {
        this.yaw_mode = initObj.yaw_mode
      }
      else {
        this.yaw_mode = 0;
      }
      if (initObj.hasOwnProperty('initial_latitude')) {
        this.initial_latitude = initObj.initial_latitude
      }
      else {
        this.initial_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('initial_longitude')) {
        this.initial_longitude = initObj.initial_longitude
      }
      else {
        this.initial_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('initial_altitude')) {
        this.initial_altitude = initObj.initial_altitude
      }
      else {
        this.initial_altitude = 0;
      }
      if (initObj.hasOwnProperty('sensitivity')) {
        this.sensitivity = initObj.sensitivity
      }
      else {
        this.sensitivity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionFollowmeTask
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [yaw_mode]
    bufferOffset = _serializer.uint8(obj.yaw_mode, buffer, bufferOffset);
    // Serialize message field [initial_latitude]
    bufferOffset = _serializer.float64(obj.initial_latitude, buffer, bufferOffset);
    // Serialize message field [initial_longitude]
    bufferOffset = _serializer.float64(obj.initial_longitude, buffer, bufferOffset);
    // Serialize message field [initial_altitude]
    bufferOffset = _serializer.uint16(obj.initial_altitude, buffer, bufferOffset);
    // Serialize message field [sensitivity]
    bufferOffset = _serializer.uint8(obj.sensitivity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionFollowmeTask
    let len;
    let data = new MissionFollowmeTask(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw_mode]
    data.yaw_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [initial_latitude]
    data.initial_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [initial_longitude]
    data.initial_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [initial_altitude]
    data.initial_altitude = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sensitivity]
    data.sensitivity = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionFollowmeTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b5547386d29daca9e6c32595ec4ca50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mode
    uint8 yaw_mode
    float64 initial_latitude
    float64 initial_longitude
    uint16 initial_altitude
    uint8 sensitivity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionFollowmeTask(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.yaw_mode !== undefined) {
      resolved.yaw_mode = msg.yaw_mode;
    }
    else {
      resolved.yaw_mode = 0
    }

    if (msg.initial_latitude !== undefined) {
      resolved.initial_latitude = msg.initial_latitude;
    }
    else {
      resolved.initial_latitude = 0.0
    }

    if (msg.initial_longitude !== undefined) {
      resolved.initial_longitude = msg.initial_longitude;
    }
    else {
      resolved.initial_longitude = 0.0
    }

    if (msg.initial_altitude !== undefined) {
      resolved.initial_altitude = msg.initial_altitude;
    }
    else {
      resolved.initial_altitude = 0
    }

    if (msg.sensitivity !== undefined) {
      resolved.sensitivity = msg.sensitivity;
    }
    else {
      resolved.sensitivity = 0
    }

    return resolved;
    }
};

module.exports = MissionFollowmeTask;

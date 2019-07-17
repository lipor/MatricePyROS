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


//-----------------------------------------------------------

class GimbalAngleControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.yaw = null;
      this.roll = null;
      this.pitch = null;
      this.duration = null;
      this.absolute_or_incremental = null;
      this.yaw_cmd_ignore = null;
      this.roll_cmd_ignore = null;
      this.pitch_cmd_ignore = null;
    }
    else {
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('absolute_or_incremental')) {
        this.absolute_or_incremental = initObj.absolute_or_incremental
      }
      else {
        this.absolute_or_incremental = false;
      }
      if (initObj.hasOwnProperty('yaw_cmd_ignore')) {
        this.yaw_cmd_ignore = initObj.yaw_cmd_ignore
      }
      else {
        this.yaw_cmd_ignore = false;
      }
      if (initObj.hasOwnProperty('roll_cmd_ignore')) {
        this.roll_cmd_ignore = initObj.roll_cmd_ignore
      }
      else {
        this.roll_cmd_ignore = false;
      }
      if (initObj.hasOwnProperty('pitch_cmd_ignore')) {
        this.pitch_cmd_ignore = initObj.pitch_cmd_ignore
      }
      else {
        this.pitch_cmd_ignore = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GimbalAngleControlRequest
    // Serialize message field [yaw]
    bufferOffset = _serializer.int16(obj.yaw, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.int16(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.int16(obj.pitch, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.int16(obj.duration, buffer, bufferOffset);
    // Serialize message field [absolute_or_incremental]
    bufferOffset = _serializer.bool(obj.absolute_or_incremental, buffer, bufferOffset);
    // Serialize message field [yaw_cmd_ignore]
    bufferOffset = _serializer.bool(obj.yaw_cmd_ignore, buffer, bufferOffset);
    // Serialize message field [roll_cmd_ignore]
    bufferOffset = _serializer.bool(obj.roll_cmd_ignore, buffer, bufferOffset);
    // Serialize message field [pitch_cmd_ignore]
    bufferOffset = _serializer.bool(obj.pitch_cmd_ignore, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GimbalAngleControlRequest
    let len;
    let data = new GimbalAngleControlRequest(null);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [absolute_or_incremental]
    data.absolute_or_incremental = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [yaw_cmd_ignore]
    data.yaw_cmd_ignore = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [roll_cmd_ignore]
    data.roll_cmd_ignore = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pitch_cmd_ignore]
    data.pitch_cmd_ignore = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/GimbalAngleControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ada515ce6b45dc1f09c576bfab01d4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    int16 yaw
    int16 roll
    int16 pitch
    int16 duration
    
    bool absolute_or_incremental
    bool yaw_cmd_ignore
    bool roll_cmd_ignore
    bool pitch_cmd_ignore
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GimbalAngleControlRequest(null);
    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.absolute_or_incremental !== undefined) {
      resolved.absolute_or_incremental = msg.absolute_or_incremental;
    }
    else {
      resolved.absolute_or_incremental = false
    }

    if (msg.yaw_cmd_ignore !== undefined) {
      resolved.yaw_cmd_ignore = msg.yaw_cmd_ignore;
    }
    else {
      resolved.yaw_cmd_ignore = false
    }

    if (msg.roll_cmd_ignore !== undefined) {
      resolved.roll_cmd_ignore = msg.roll_cmd_ignore;
    }
    else {
      resolved.roll_cmd_ignore = false
    }

    if (msg.pitch_cmd_ignore !== undefined) {
      resolved.pitch_cmd_ignore = msg.pitch_cmd_ignore;
    }
    else {
      resolved.pitch_cmd_ignore = false
    }

    return resolved;
    }
};

class GimbalAngleControlResponse {
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
    // Serializes a message object of type GimbalAngleControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GimbalAngleControlResponse
    let len;
    let data = new GimbalAngleControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/GimbalAngleControlResponse';
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
    const resolved = new GimbalAngleControlResponse(null);
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
  Request: GimbalAngleControlRequest,
  Response: GimbalAngleControlResponse,
  md5sum() { return '355893b815576f75c0061dddd133c146'; },
  datatype() { return 'dji_sdk/GimbalAngleControl'; }
};

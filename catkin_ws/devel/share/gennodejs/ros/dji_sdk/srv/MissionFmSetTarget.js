// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionFollowmeTarget = require('../msg/MissionFollowmeTarget.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionFmSetTargetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.followme_target = null;
    }
    else {
      if (initObj.hasOwnProperty('followme_target')) {
        this.followme_target = initObj.followme_target
      }
      else {
        this.followme_target = new MissionFollowmeTarget();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionFmSetTargetRequest
    // Serialize message field [followme_target]
    bufferOffset = MissionFollowmeTarget.serialize(obj.followme_target, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionFmSetTargetRequest
    let len;
    let data = new MissionFmSetTargetRequest(null);
    // Deserialize message field [followme_target]
    data.followme_target = MissionFollowmeTarget.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionFmSetTargetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '186e8eaac8caf1c8852b2a15c50454d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionFollowmeTarget followme_target
    
    ================================================================================
    MSG: dji_sdk/MissionFollowmeTarget
    float64 latitude
    float64 longitude
    uint16 altitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionFmSetTargetRequest(null);
    if (msg.followme_target !== undefined) {
      resolved.followme_target = MissionFollowmeTarget.Resolve(msg.followme_target)
    }
    else {
      resolved.followme_target = new MissionFollowmeTarget()
    }

    return resolved;
    }
};

class MissionFmSetTargetResponse {
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
    // Serializes a message object of type MissionFmSetTargetResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionFmSetTargetResponse
    let len;
    let data = new MissionFmSetTargetResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionFmSetTargetResponse';
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
    const resolved = new MissionFmSetTargetResponse(null);
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
  Request: MissionFmSetTargetRequest,
  Response: MissionFmSetTargetResponse,
  md5sum() { return '9ee16cc78eb2fc59f786dcdc9263f07f'; },
  datatype() { return 'dji_sdk/MissionFmSetTarget'; }
};

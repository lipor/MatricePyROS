// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionFollowmeTask = require('../msg/MissionFollowmeTask.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionFmUploadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.followme_task = null;
    }
    else {
      if (initObj.hasOwnProperty('followme_task')) {
        this.followme_task = initObj.followme_task
      }
      else {
        this.followme_task = new MissionFollowmeTask();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionFmUploadRequest
    // Serialize message field [followme_task]
    bufferOffset = MissionFollowmeTask.serialize(obj.followme_task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionFmUploadRequest
    let len;
    let data = new MissionFmUploadRequest(null);
    // Deserialize message field [followme_task]
    data.followme_task = MissionFollowmeTask.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionFmUploadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cd25f0a53a1d10e6538dd9fb391a7e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionFollowmeTask followme_task
    
    ================================================================================
    MSG: dji_sdk/MissionFollowmeTask
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
    const resolved = new MissionFmUploadRequest(null);
    if (msg.followme_task !== undefined) {
      resolved.followme_task = MissionFollowmeTask.Resolve(msg.followme_task)
    }
    else {
      resolved.followme_task = new MissionFollowmeTask()
    }

    return resolved;
    }
};

class MissionFmUploadResponse {
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
    // Serializes a message object of type MissionFmUploadResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionFmUploadResponse
    let len;
    let data = new MissionFmUploadResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionFmUploadResponse';
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
    const resolved = new MissionFmUploadResponse(null);
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
  Request: MissionFmUploadRequest,
  Response: MissionFmUploadResponse,
  md5sum() { return '10ed872d3d019b452e558098ab5f5224'; },
  datatype() { return 'dji_sdk/MissionFmUpload'; }
};

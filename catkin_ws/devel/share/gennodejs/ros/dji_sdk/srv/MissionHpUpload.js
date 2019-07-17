// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionHotpointTask = require('../msg/MissionHotpointTask.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionHpUploadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hotpoint_task = null;
    }
    else {
      if (initObj.hasOwnProperty('hotpoint_task')) {
        this.hotpoint_task = initObj.hotpoint_task
      }
      else {
        this.hotpoint_task = new MissionHotpointTask();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionHpUploadRequest
    // Serialize message field [hotpoint_task]
    bufferOffset = MissionHotpointTask.serialize(obj.hotpoint_task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionHpUploadRequest
    let len;
    let data = new MissionHpUploadRequest(null);
    // Deserialize message field [hotpoint_task]
    data.hotpoint_task = MissionHotpointTask.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 39;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpUploadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e36e66ca170c4d03ee023ad56c6bb5a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionHotpointTask hotpoint_task
    
    ================================================================================
    MSG: dji_sdk/MissionHotpointTask
    float64 latitude
    float64 longitude
    float64 altitude
    float64 radius
    float32 angular_speed
    uint8 is_clockwise
    uint8 start_point
    uint8 yaw_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionHpUploadRequest(null);
    if (msg.hotpoint_task !== undefined) {
      resolved.hotpoint_task = MissionHotpointTask.Resolve(msg.hotpoint_task)
    }
    else {
      resolved.hotpoint_task = new MissionHotpointTask()
    }

    return resolved;
    }
};

class MissionHpUploadResponse {
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
    // Serializes a message object of type MissionHpUploadResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionHpUploadResponse
    let len;
    let data = new MissionHpUploadResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpUploadResponse';
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
    const resolved = new MissionHpUploadResponse(null);
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
  Request: MissionHpUploadRequest,
  Response: MissionHpUploadResponse,
  md5sum() { return 'd057d61e861a72611b7918cfd8a98e4a'; },
  datatype() { return 'dji_sdk/MissionHpUpload'; }
};

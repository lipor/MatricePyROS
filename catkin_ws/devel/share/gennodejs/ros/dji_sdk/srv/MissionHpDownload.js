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

let MissionHotpointTask = require('../msg/MissionHotpointTask.js');

//-----------------------------------------------------------

class MissionHpDownloadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionHpDownloadRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionHpDownloadRequest
    let len;
    let data = new MissionHpDownloadRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpDownloadRequest';
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
    const resolved = new MissionHpDownloadRequest(null);
    return resolved;
    }
};

class MissionHpDownloadResponse {
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
    // Serializes a message object of type MissionHpDownloadResponse
    // Serialize message field [hotpoint_task]
    bufferOffset = MissionHotpointTask.serialize(obj.hotpoint_task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionHpDownloadResponse
    let len;
    let data = new MissionHpDownloadResponse(null);
    // Deserialize message field [hotpoint_task]
    data.hotpoint_task = MissionHotpointTask.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 39;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpDownloadResponse';
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
    const resolved = new MissionHpDownloadResponse(null);
    if (msg.hotpoint_task !== undefined) {
      resolved.hotpoint_task = MissionHotpointTask.Resolve(msg.hotpoint_task)
    }
    else {
      resolved.hotpoint_task = new MissionHotpointTask()
    }

    return resolved;
    }
};

module.exports = {
  Request: MissionHpDownloadRequest,
  Response: MissionHpDownloadResponse,
  md5sum() { return 'e36e66ca170c4d03ee023ad56c6bb5a0'; },
  datatype() { return 'dji_sdk/MissionHpDownload'; }
};

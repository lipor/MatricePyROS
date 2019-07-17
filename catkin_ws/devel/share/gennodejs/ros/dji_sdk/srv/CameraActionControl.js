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

class CameraActionControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_action = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_action')) {
        this.camera_action = initObj.camera_action
      }
      else {
        this.camera_action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraActionControlRequest
    // Serialize message field [camera_action]
    bufferOffset = _serializer.uint8(obj.camera_action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraActionControlRequest
    let len;
    let data = new CameraActionControlRequest(null);
    // Deserialize message field [camera_action]
    data.camera_action = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/CameraActionControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4ed1822b47772deebd56bdca0095874';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    uint8 camera_action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraActionControlRequest(null);
    if (msg.camera_action !== undefined) {
      resolved.camera_action = msg.camera_action;
    }
    else {
      resolved.camera_action = 0
    }

    return resolved;
    }
};

class CameraActionControlResponse {
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
    // Serializes a message object of type CameraActionControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraActionControlResponse
    let len;
    let data = new CameraActionControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/CameraActionControlResponse';
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
    const resolved = new CameraActionControlResponse(null);
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
  Request: CameraActionControlRequest,
  Response: CameraActionControlResponse,
  md5sum() { return '77629488af3edd3adaa94bf250d692c6'; },
  datatype() { return 'dji_sdk/CameraActionControl'; }
};

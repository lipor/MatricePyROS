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

class SDKPermissionControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_enable = null;
    }
    else {
      if (initObj.hasOwnProperty('control_enable')) {
        this.control_enable = initObj.control_enable
      }
      else {
        this.control_enable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDKPermissionControlRequest
    // Serialize message field [control_enable]
    bufferOffset = _serializer.uint8(obj.control_enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDKPermissionControlRequest
    let len;
    let data = new SDKPermissionControlRequest(null);
    // Deserialize message field [control_enable]
    data.control_enable = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/SDKPermissionControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd62981e022c80f2b67e97d9e17fffd9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    uint8 control_enable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SDKPermissionControlRequest(null);
    if (msg.control_enable !== undefined) {
      resolved.control_enable = msg.control_enable;
    }
    else {
      resolved.control_enable = 0
    }

    return resolved;
    }
};

class SDKPermissionControlResponse {
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
    // Serializes a message object of type SDKPermissionControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDKPermissionControlResponse
    let len;
    let data = new SDKPermissionControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/SDKPermissionControlResponse';
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
    const resolved = new SDKPermissionControlResponse(null);
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
  Request: SDKPermissionControlRequest,
  Response: SDKPermissionControlResponse,
  md5sum() { return 'de4f6d2b1e0b995a7d472739c6318805'; },
  datatype() { return 'dji_sdk/SDKPermissionControl'; }
};

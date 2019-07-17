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

class VirtualRCEnableControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
      this.if_back_to_real = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = 0;
      }
      if (initObj.hasOwnProperty('if_back_to_real')) {
        this.if_back_to_real = initObj.if_back_to_real
      }
      else {
        this.if_back_to_real = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VirtualRCEnableControlRequest
    // Serialize message field [enable]
    bufferOffset = _serializer.uint8(obj.enable, buffer, bufferOffset);
    // Serialize message field [if_back_to_real]
    bufferOffset = _serializer.uint8(obj.if_back_to_real, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VirtualRCEnableControlRequest
    let len;
    let data = new VirtualRCEnableControlRequest(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [if_back_to_real]
    data.if_back_to_real = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/VirtualRCEnableControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ed79d2efd2ce23c729bcf82c65bbf2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 enable
    uint8 if_back_to_real
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VirtualRCEnableControlRequest(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = 0
    }

    if (msg.if_back_to_real !== undefined) {
      resolved.if_back_to_real = msg.if_back_to_real;
    }
    else {
      resolved.if_back_to_real = 0
    }

    return resolved;
    }
};

class VirtualRCEnableControlResponse {
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
    // Serializes a message object of type VirtualRCEnableControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VirtualRCEnableControlResponse
    let len;
    let data = new VirtualRCEnableControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/VirtualRCEnableControlResponse';
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
    const resolved = new VirtualRCEnableControlResponse(null);
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
  Request: VirtualRCEnableControlRequest,
  Response: VirtualRCEnableControlResponse,
  md5sum() { return '20f7ad98ee118e7dcd3a99507a0c866f'; },
  datatype() { return 'dji_sdk/VirtualRCEnableControl'; }
};

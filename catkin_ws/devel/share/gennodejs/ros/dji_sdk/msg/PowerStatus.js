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

class PowerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.percentage = null;
    }
    else {
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerStatus
    // Serialize message field [percentage]
    bufferOffset = _serializer.uint8(obj.percentage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerStatus
    let len;
    let data = new PowerStatus(null);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/PowerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a5e877bf2d8a1641c4f5265662bc268';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 percentage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerStatus(null);
    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0
    }

    return resolved;
    }
};

module.exports = PowerStatus;

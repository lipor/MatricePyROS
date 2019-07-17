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

class MissionPushInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.data_1 = null;
      this.data_2 = null;
      this.data_3 = null;
      this.data_4 = null;
      this.data_5 = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('data_1')) {
        this.data_1 = initObj.data_1
      }
      else {
        this.data_1 = 0;
      }
      if (initObj.hasOwnProperty('data_2')) {
        this.data_2 = initObj.data_2
      }
      else {
        this.data_2 = 0;
      }
      if (initObj.hasOwnProperty('data_3')) {
        this.data_3 = initObj.data_3
      }
      else {
        this.data_3 = 0;
      }
      if (initObj.hasOwnProperty('data_4')) {
        this.data_4 = initObj.data_4
      }
      else {
        this.data_4 = 0;
      }
      if (initObj.hasOwnProperty('data_5')) {
        this.data_5 = initObj.data_5
      }
      else {
        this.data_5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionPushInfo
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [data_1]
    bufferOffset = _serializer.uint8(obj.data_1, buffer, bufferOffset);
    // Serialize message field [data_2]
    bufferOffset = _serializer.uint8(obj.data_2, buffer, bufferOffset);
    // Serialize message field [data_3]
    bufferOffset = _serializer.uint8(obj.data_3, buffer, bufferOffset);
    // Serialize message field [data_4]
    bufferOffset = _serializer.uint8(obj.data_4, buffer, bufferOffset);
    // Serialize message field [data_5]
    bufferOffset = _serializer.uint8(obj.data_5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionPushInfo
    let len;
    let data = new MissionPushInfo(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_1]
    data.data_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_2]
    data.data_2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_3]
    data.data_3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_4]
    data.data_4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_5]
    data.data_5 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionPushInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a520776ca6060b527ddc1be33a700532';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 type
    uint8 data_1
    uint8 data_2
    uint8 data_3
    uint8 data_4
    uint8 data_5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionPushInfo(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.data_1 !== undefined) {
      resolved.data_1 = msg.data_1;
    }
    else {
      resolved.data_1 = 0
    }

    if (msg.data_2 !== undefined) {
      resolved.data_2 = msg.data_2;
    }
    else {
      resolved.data_2 = 0
    }

    if (msg.data_3 !== undefined) {
      resolved.data_3 = msg.data_3;
    }
    else {
      resolved.data_3 = 0
    }

    if (msg.data_4 !== undefined) {
      resolved.data_4 = msg.data_4;
    }
    else {
      resolved.data_4 = 0
    }

    if (msg.data_5 !== undefined) {
      resolved.data_5 = msg.data_5;
    }
    else {
      resolved.data_5 = 0
    }

    return resolved;
    }
};

module.exports = MissionPushInfo;

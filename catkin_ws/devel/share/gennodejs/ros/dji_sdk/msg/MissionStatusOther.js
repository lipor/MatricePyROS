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

class MissionStatusOther {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_type = null;
      this.last_mission_type = null;
      this.is_broken = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_type')) {
        this.mission_type = initObj.mission_type
      }
      else {
        this.mission_type = 0;
      }
      if (initObj.hasOwnProperty('last_mission_type')) {
        this.last_mission_type = initObj.last_mission_type
      }
      else {
        this.last_mission_type = 0;
      }
      if (initObj.hasOwnProperty('is_broken')) {
        this.is_broken = initObj.is_broken
      }
      else {
        this.is_broken = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionStatusOther
    // Serialize message field [mission_type]
    bufferOffset = _serializer.uint8(obj.mission_type, buffer, bufferOffset);
    // Serialize message field [last_mission_type]
    bufferOffset = _serializer.uint8(obj.last_mission_type, buffer, bufferOffset);
    // Serialize message field [is_broken]
    bufferOffset = _serializer.uint8(obj.is_broken, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionStatusOther
    let len;
    let data = new MissionStatusOther(null);
    // Deserialize message field [mission_type]
    data.mission_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [last_mission_type]
    data.last_mission_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_broken]
    data.is_broken = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionStatusOther';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0261ae1eb980895a8685db930ec1a68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mission_type
    uint8 last_mission_type
    uint8 is_broken
    uint8 error_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionStatusOther(null);
    if (msg.mission_type !== undefined) {
      resolved.mission_type = msg.mission_type;
    }
    else {
      resolved.mission_type = 0
    }

    if (msg.last_mission_type !== undefined) {
      resolved.last_mission_type = msg.last_mission_type;
    }
    else {
      resolved.last_mission_type = 0
    }

    if (msg.is_broken !== undefined) {
      resolved.is_broken = msg.is_broken;
    }
    else {
      resolved.is_broken = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    return resolved;
    }
};

module.exports = MissionStatusOther;

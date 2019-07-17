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

class MissionEventWpAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.incident_type = null;
      this.repeat = null;
    }
    else {
      if (initObj.hasOwnProperty('incident_type')) {
        this.incident_type = initObj.incident_type
      }
      else {
        this.incident_type = 0;
      }
      if (initObj.hasOwnProperty('repeat')) {
        this.repeat = initObj.repeat
      }
      else {
        this.repeat = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionEventWpAction
    // Serialize message field [incident_type]
    bufferOffset = _serializer.uint8(obj.incident_type, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.uint8(obj.repeat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionEventWpAction
    let len;
    let data = new MissionEventWpAction(null);
    // Deserialize message field [incident_type]
    data.incident_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionEventWpAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'feb2e4aeb62859a1aee7828f09a4a6a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 incident_type
    uint8 repeat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionEventWpAction(null);
    if (msg.incident_type !== undefined) {
      resolved.incident_type = msg.incident_type;
    }
    else {
      resolved.incident_type = 0
    }

    if (msg.repeat !== undefined) {
      resolved.repeat = msg.repeat;
    }
    else {
      resolved.repeat = 0
    }

    return resolved;
    }
};

module.exports = MissionEventWpAction;

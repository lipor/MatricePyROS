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

class MissionEventWpUpload {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.incident_type = null;
      this.mission_valid = null;
      this.estimated_runtime = null;
    }
    else {
      if (initObj.hasOwnProperty('incident_type')) {
        this.incident_type = initObj.incident_type
      }
      else {
        this.incident_type = 0;
      }
      if (initObj.hasOwnProperty('mission_valid')) {
        this.mission_valid = initObj.mission_valid
      }
      else {
        this.mission_valid = 0;
      }
      if (initObj.hasOwnProperty('estimated_runtime')) {
        this.estimated_runtime = initObj.estimated_runtime
      }
      else {
        this.estimated_runtime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionEventWpUpload
    // Serialize message field [incident_type]
    bufferOffset = _serializer.uint8(obj.incident_type, buffer, bufferOffset);
    // Serialize message field [mission_valid]
    bufferOffset = _serializer.uint8(obj.mission_valid, buffer, bufferOffset);
    // Serialize message field [estimated_runtime]
    bufferOffset = _serializer.uint16(obj.estimated_runtime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionEventWpUpload
    let len;
    let data = new MissionEventWpUpload(null);
    // Deserialize message field [incident_type]
    data.incident_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mission_valid]
    data.mission_valid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [estimated_runtime]
    data.estimated_runtime = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionEventWpUpload';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bbd22d7335594c91d2500ae8d41ab36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 incident_type
    uint8 mission_valid
    uint16 estimated_runtime
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionEventWpUpload(null);
    if (msg.incident_type !== undefined) {
      resolved.incident_type = msg.incident_type;
    }
    else {
      resolved.incident_type = 0
    }

    if (msg.mission_valid !== undefined) {
      resolved.mission_valid = msg.mission_valid;
    }
    else {
      resolved.mission_valid = 0
    }

    if (msg.estimated_runtime !== undefined) {
      resolved.estimated_runtime = msg.estimated_runtime;
    }
    else {
      resolved.estimated_runtime = 0
    }

    return resolved;
    }
};

module.exports = MissionEventWpUpload;

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

class MissionEventWpReach {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.incident_type = null;
      this.waypoint_index = null;
      this.current_status = null;
    }
    else {
      if (initObj.hasOwnProperty('incident_type')) {
        this.incident_type = initObj.incident_type
      }
      else {
        this.incident_type = 0;
      }
      if (initObj.hasOwnProperty('waypoint_index')) {
        this.waypoint_index = initObj.waypoint_index
      }
      else {
        this.waypoint_index = 0;
      }
      if (initObj.hasOwnProperty('current_status')) {
        this.current_status = initObj.current_status
      }
      else {
        this.current_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionEventWpReach
    // Serialize message field [incident_type]
    bufferOffset = _serializer.uint8(obj.incident_type, buffer, bufferOffset);
    // Serialize message field [waypoint_index]
    bufferOffset = _serializer.uint8(obj.waypoint_index, buffer, bufferOffset);
    // Serialize message field [current_status]
    bufferOffset = _serializer.uint8(obj.current_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionEventWpReach
    let len;
    let data = new MissionEventWpReach(null);
    // Deserialize message field [incident_type]
    data.incident_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [waypoint_index]
    data.waypoint_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_status]
    data.current_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionEventWpReach';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '887664b69cd341b8a21df490bb79afea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 incident_type
    uint8 waypoint_index
    uint8 current_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionEventWpReach(null);
    if (msg.incident_type !== undefined) {
      resolved.incident_type = msg.incident_type;
    }
    else {
      resolved.incident_type = 0
    }

    if (msg.waypoint_index !== undefined) {
      resolved.waypoint_index = msg.waypoint_index;
    }
    else {
      resolved.waypoint_index = 0
    }

    if (msg.current_status !== undefined) {
      resolved.current_status = msg.current_status;
    }
    else {
      resolved.current_status = 0
    }

    return resolved;
    }
};

module.exports = MissionEventWpReach;

// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaypointList = require('./WaypointList.js');

//-----------------------------------------------------------

class WaypointNavigationGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_list = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_list')) {
        this.waypoint_list = initObj.waypoint_list
      }
      else {
        this.waypoint_list = new WaypointList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointNavigationGoal
    // Serialize message field [waypoint_list]
    bufferOffset = WaypointList.serialize(obj.waypoint_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointNavigationGoal
    let len;
    let data = new WaypointNavigationGoal(null);
    // Deserialize message field [waypoint_list]
    data.waypoint_list = WaypointList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WaypointList.getMessageSize(object.waypoint_list);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/WaypointNavigationGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8c17a2713443e9792d80cdae0b731c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    WaypointList waypoint_list
    
    ================================================================================
    MSG: dji_sdk/WaypointList
    Waypoint[] waypoint_list
    
    ================================================================================
    MSG: dji_sdk/Waypoint
    #latitude is in degree
    float64 latitude
    #longitude is in degree
    float64 longitude
    float32 altitude
    #heading is in [-180,180]
    int16 heading 
    #stay time is in second
    uint16 staytime
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointNavigationGoal(null);
    if (msg.waypoint_list !== undefined) {
      resolved.waypoint_list = WaypointList.Resolve(msg.waypoint_list)
    }
    else {
      resolved.waypoint_list = new WaypointList()
    }

    return resolved;
    }
};

module.exports = WaypointNavigationGoal;

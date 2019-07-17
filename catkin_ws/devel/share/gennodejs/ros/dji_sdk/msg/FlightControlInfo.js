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

class FlightControlInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_mode = null;
      this.cur_ctrl_dev_in_navi_mode = null;
      this.serial_req_status = null;
      this.virtual_rc_status = null;
    }
    else {
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('cur_ctrl_dev_in_navi_mode')) {
        this.cur_ctrl_dev_in_navi_mode = initObj.cur_ctrl_dev_in_navi_mode
      }
      else {
        this.cur_ctrl_dev_in_navi_mode = 0;
      }
      if (initObj.hasOwnProperty('serial_req_status')) {
        this.serial_req_status = initObj.serial_req_status
      }
      else {
        this.serial_req_status = 0;
      }
      if (initObj.hasOwnProperty('virtual_rc_status')) {
        this.virtual_rc_status = initObj.virtual_rc_status
      }
      else {
        this.virtual_rc_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlightControlInfo
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [cur_ctrl_dev_in_navi_mode]
    bufferOffset = _serializer.uint8(obj.cur_ctrl_dev_in_navi_mode, buffer, bufferOffset);
    // Serialize message field [serial_req_status]
    bufferOffset = _serializer.uint8(obj.serial_req_status, buffer, bufferOffset);
    // Serialize message field [virtual_rc_status]
    bufferOffset = _serializer.uint8(obj.virtual_rc_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlightControlInfo
    let len;
    let data = new FlightControlInfo(null);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cur_ctrl_dev_in_navi_mode]
    data.cur_ctrl_dev_in_navi_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [serial_req_status]
    data.serial_req_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [virtual_rc_status]
    data.virtual_rc_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/FlightControlInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '943648dc47db23e3c3071c5427b1db2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #control mode
    uint8 control_mode
    #0:rc, 1:mobile, 2:onboard
    uint8 cur_ctrl_dev_in_navi_mode
    #0:disabled, 1:enabled
    uint8 serial_req_status
    #0:disabled, 1:enabled
    uint8 virtual_rc_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlightControlInfo(null);
    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.cur_ctrl_dev_in_navi_mode !== undefined) {
      resolved.cur_ctrl_dev_in_navi_mode = msg.cur_ctrl_dev_in_navi_mode;
    }
    else {
      resolved.cur_ctrl_dev_in_navi_mode = 0
    }

    if (msg.serial_req_status !== undefined) {
      resolved.serial_req_status = msg.serial_req_status;
    }
    else {
      resolved.serial_req_status = 0
    }

    if (msg.virtual_rc_status !== undefined) {
      resolved.virtual_rc_status = msg.virtual_rc_status;
    }
    else {
      resolved.virtual_rc_status = 0
    }

    return resolved;
    }
};

module.exports = FlightControlInfo;

// Auto-generated. Do not edit!

// (in-package dji_sdk_web_groundstation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapNavSrvCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmdCode = null;
      this.tid = null;
    }
    else {
      if (initObj.hasOwnProperty('cmdCode')) {
        this.cmdCode = initObj.cmdCode
      }
      else {
        this.cmdCode = 0;
      }
      if (initObj.hasOwnProperty('tid')) {
        this.tid = initObj.tid
      }
      else {
        this.tid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapNavSrvCmd
    // Serialize message field [cmdCode]
    bufferOffset = _serializer.uint8(obj.cmdCode, buffer, bufferOffset);
    // Serialize message field [tid]
    bufferOffset = _serializer.uint64(obj.tid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapNavSrvCmd
    let len;
    let data = new MapNavSrvCmd(null);
    // Deserialize message field [cmdCode]
    data.cmdCode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tid]
    data.tid = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk_web_groundstation/MapNavSrvCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '321f9fe469695036c44374febd41879e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #command code
    uint8 cmdCode
    #task id
    uint64 tid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapNavSrvCmd(null);
    if (msg.cmdCode !== undefined) {
      resolved.cmdCode = msg.cmdCode;
    }
    else {
      resolved.cmdCode = 0
    }

    if (msg.tid !== undefined) {
      resolved.tid = msg.tid;
    }
    else {
      resolved.tid = 0
    }

    return resolved;
    }
};

module.exports = MapNavSrvCmd;

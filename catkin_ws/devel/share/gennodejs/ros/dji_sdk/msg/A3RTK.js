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

class A3RTK {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.date = null;
      this.time = null;
      this.longitude_RTK = null;
      this.latitude_RTK = null;
      this.height_above_sea_RTK = null;
      this.velocity_north = null;
      this.velocity_east = null;
      this.velocity_ground = null;
      this.yaw = null;
      this.position_flag = null;
      this.yaw_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('longitude_RTK')) {
        this.longitude_RTK = initObj.longitude_RTK
      }
      else {
        this.longitude_RTK = 0.0;
      }
      if (initObj.hasOwnProperty('latitude_RTK')) {
        this.latitude_RTK = initObj.latitude_RTK
      }
      else {
        this.latitude_RTK = 0.0;
      }
      if (initObj.hasOwnProperty('height_above_sea_RTK')) {
        this.height_above_sea_RTK = initObj.height_above_sea_RTK
      }
      else {
        this.height_above_sea_RTK = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_north')) {
        this.velocity_north = initObj.velocity_north
      }
      else {
        this.velocity_north = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_east')) {
        this.velocity_east = initObj.velocity_east
      }
      else {
        this.velocity_east = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_ground')) {
        this.velocity_ground = initObj.velocity_ground
      }
      else {
        this.velocity_ground = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0;
      }
      if (initObj.hasOwnProperty('position_flag')) {
        this.position_flag = initObj.position_flag
      }
      else {
        this.position_flag = 0;
      }
      if (initObj.hasOwnProperty('yaw_flag')) {
        this.yaw_flag = initObj.yaw_flag
      }
      else {
        this.yaw_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type A3RTK
    // Serialize message field [date]
    bufferOffset = _serializer.uint32(obj.date, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.uint32(obj.time, buffer, bufferOffset);
    // Serialize message field [longitude_RTK]
    bufferOffset = _serializer.float64(obj.longitude_RTK, buffer, bufferOffset);
    // Serialize message field [latitude_RTK]
    bufferOffset = _serializer.float64(obj.latitude_RTK, buffer, bufferOffset);
    // Serialize message field [height_above_sea_RTK]
    bufferOffset = _serializer.float32(obj.height_above_sea_RTK, buffer, bufferOffset);
    // Serialize message field [velocity_north]
    bufferOffset = _serializer.float32(obj.velocity_north, buffer, bufferOffset);
    // Serialize message field [velocity_east]
    bufferOffset = _serializer.float32(obj.velocity_east, buffer, bufferOffset);
    // Serialize message field [velocity_ground]
    bufferOffset = _serializer.float32(obj.velocity_ground, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.int16(obj.yaw, buffer, bufferOffset);
    // Serialize message field [position_flag]
    bufferOffset = _serializer.uint8(obj.position_flag, buffer, bufferOffset);
    // Serialize message field [yaw_flag]
    bufferOffset = _serializer.uint8(obj.yaw_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type A3RTK
    let len;
    let data = new A3RTK(null);
    // Deserialize message field [date]
    data.date = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [longitude_RTK]
    data.longitude_RTK = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_RTK]
    data.latitude_RTK = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height_above_sea_RTK]
    data.height_above_sea_RTK = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_north]
    data.velocity_north = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_east]
    data.velocity_east = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_ground]
    data.velocity_ground = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [position_flag]
    data.position_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw_flag]
    data.yaw_flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/A3RTK';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f1a4c1310d587c3f79f00f74019a0be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 date
    uint32 time
    float64 longitude_RTK
    float64 latitude_RTK
    float32 height_above_sea_RTK
    float32 velocity_north
    float32 velocity_east
    float32 velocity_ground
    int16 yaw #between baseline and south
    uint8 position_flag
    uint8 yaw_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new A3RTK(null);
    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.longitude_RTK !== undefined) {
      resolved.longitude_RTK = msg.longitude_RTK;
    }
    else {
      resolved.longitude_RTK = 0.0
    }

    if (msg.latitude_RTK !== undefined) {
      resolved.latitude_RTK = msg.latitude_RTK;
    }
    else {
      resolved.latitude_RTK = 0.0
    }

    if (msg.height_above_sea_RTK !== undefined) {
      resolved.height_above_sea_RTK = msg.height_above_sea_RTK;
    }
    else {
      resolved.height_above_sea_RTK = 0.0
    }

    if (msg.velocity_north !== undefined) {
      resolved.velocity_north = msg.velocity_north;
    }
    else {
      resolved.velocity_north = 0.0
    }

    if (msg.velocity_east !== undefined) {
      resolved.velocity_east = msg.velocity_east;
    }
    else {
      resolved.velocity_east = 0.0
    }

    if (msg.velocity_ground !== undefined) {
      resolved.velocity_ground = msg.velocity_ground;
    }
    else {
      resolved.velocity_ground = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0
    }

    if (msg.position_flag !== undefined) {
      resolved.position_flag = msg.position_flag;
    }
    else {
      resolved.position_flag = 0
    }

    if (msg.yaw_flag !== undefined) {
      resolved.yaw_flag = msg.yaw_flag;
    }
    else {
      resolved.yaw_flag = 0
    }

    return resolved;
    }
};

module.exports = A3RTK;

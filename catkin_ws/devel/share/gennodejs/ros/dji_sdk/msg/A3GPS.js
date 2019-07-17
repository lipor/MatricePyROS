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

class A3GPS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.date = null;
      this.time = null;
      this.longitude = null;
      this.latitude = null;
      this.height_above_sea = null;
      this.velocity_north = null;
      this.velocity_east = null;
      this.velocity_ground = null;
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
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0;
      }
      if (initObj.hasOwnProperty('height_above_sea')) {
        this.height_above_sea = initObj.height_above_sea
      }
      else {
        this.height_above_sea = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type A3GPS
    // Serialize message field [date]
    bufferOffset = _serializer.uint32(obj.date, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.uint32(obj.time, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.int32(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.int32(obj.latitude, buffer, bufferOffset);
    // Serialize message field [height_above_sea]
    bufferOffset = _serializer.int32(obj.height_above_sea, buffer, bufferOffset);
    // Serialize message field [velocity_north]
    bufferOffset = _serializer.float32(obj.velocity_north, buffer, bufferOffset);
    // Serialize message field [velocity_east]
    bufferOffset = _serializer.float32(obj.velocity_east, buffer, bufferOffset);
    // Serialize message field [velocity_ground]
    bufferOffset = _serializer.float32(obj.velocity_ground, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type A3GPS
    let len;
    let data = new A3GPS(null);
    // Deserialize message field [date]
    data.date = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height_above_sea]
    data.height_above_sea = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velocity_north]
    data.velocity_north = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_east]
    data.velocity_east = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_ground]
    data.velocity_ground = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/A3GPS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11eb94934f90318efef991e43caf4ed1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 date #GPS date
    uint32 time #GPS time
    int32 longitude #unit in degree*10^7
    int32 latitude  #unit in degree*10^7
    int32 height_above_sea #unit in mm 
    float32 velocity_north #unit in cm/s
    float32 velocity_east #unit in cm/s
    float32 velocity_ground #unit in cm/s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new A3GPS(null);
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

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0
    }

    if (msg.height_above_sea !== undefined) {
      resolved.height_above_sea = msg.height_above_sea;
    }
    else {
      resolved.height_above_sea = 0
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

    return resolved;
    }
};

module.exports = A3GPS;

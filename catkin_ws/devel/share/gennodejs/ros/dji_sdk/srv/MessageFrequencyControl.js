// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MessageFrequencyControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frequency = null;
    }
    else {
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MessageFrequencyControlRequest
    // Check that the constant length array field [frequency] has the right length
    if (obj.frequency.length !== 16) {
      throw new Error('Unable to serialize array field frequency - length must be 16')
    }
    // Serialize message field [frequency]
    bufferOffset = _arraySerializer.uint8(obj.frequency, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MessageFrequencyControlRequest
    let len;
    let data = new MessageFrequencyControlRequest(null);
    // Deserialize message field [frequency]
    data.frequency = _arrayDeserializer.uint8(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MessageFrequencyControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f27a0697a2efd8da664f239ba301c7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[16] frequency
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MessageFrequencyControlRequest(null);
    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = new Array(16).fill(0)
    }

    return resolved;
    }
};

class MessageFrequencyControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MessageFrequencyControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MessageFrequencyControlResponse
    let len;
    let data = new MessageFrequencyControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MessageFrequencyControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MessageFrequencyControlResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MessageFrequencyControlRequest,
  Response: MessageFrequencyControlResponse,
  md5sum() { return '631e88e1468cdc8d59e5bd64d8267053'; },
  datatype() { return 'dji_sdk/MessageFrequencyControl'; }
};

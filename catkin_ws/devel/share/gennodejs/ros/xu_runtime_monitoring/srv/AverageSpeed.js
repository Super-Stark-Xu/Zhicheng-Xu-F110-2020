// Auto-generated. Do not edit!

// (in-package xu_runtime_monitoring.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AverageSpeedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AverageSpeedRequest
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AverageSpeedRequest
    let len;
    let data = new AverageSpeedRequest(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xu_runtime_monitoring/AverageSpeedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbac7e718df1ff81065bd08fbabb1c57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance
    float64 time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AverageSpeedRequest(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

class AverageSpeedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ave_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('ave_speed')) {
        this.ave_speed = initObj.ave_speed
      }
      else {
        this.ave_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AverageSpeedResponse
    // Serialize message field [ave_speed]
    bufferOffset = _serializer.float64(obj.ave_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AverageSpeedResponse
    let len;
    let data = new AverageSpeedResponse(null);
    // Deserialize message field [ave_speed]
    data.ave_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xu_runtime_monitoring/AverageSpeedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '920d4e4fb7f153b9c0a8d2270418ac0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 ave_speed
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AverageSpeedResponse(null);
    if (msg.ave_speed !== undefined) {
      resolved.ave_speed = msg.ave_speed;
    }
    else {
      resolved.ave_speed = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: AverageSpeedRequest,
  Response: AverageSpeedResponse,
  md5sum() { return '221e08f65343de99d29b1a4f55b68d0b'; },
  datatype() { return 'xu_runtime_monitoring/AverageSpeed'; }
};

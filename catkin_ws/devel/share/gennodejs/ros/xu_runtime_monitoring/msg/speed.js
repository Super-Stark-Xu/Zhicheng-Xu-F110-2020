// Auto-generated. Do not edit!

// (in-package xu_runtime_monitoring.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class speed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ave_x_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('ave_x_speed')) {
        this.ave_x_speed = initObj.ave_x_speed
      }
      else {
        this.ave_x_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speed
    // Serialize message field [ave_x_speed]
    bufferOffset = _serializer.float64(obj.ave_x_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speed
    let len;
    let data = new speed(null);
    // Deserialize message field [ave_x_speed]
    data.ave_x_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xu_runtime_monitoring/speed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69785c2d3515ba7cc203e7b353ad6156';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 ave_x_speed 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speed(null);
    if (msg.ave_x_speed !== undefined) {
      resolved.ave_x_speed = msg.ave_x_speed;
    }
    else {
      resolved.ave_x_speed = 0.0
    }

    return resolved;
    }
};

module.exports = speed;

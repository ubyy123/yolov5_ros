// Auto-generated. Do not edit!

// (in-package message.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MultiPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.strings = null;
      this.points1 = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('strings')) {
        this.strings = initObj.strings
      }
      else {
        this.strings = [];
      }
      if (initObj.hasOwnProperty('points1')) {
        this.points1 = initObj.points1
      }
      else {
        this.points1 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiPoint
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [strings]
    bufferOffset = _arraySerializer.string(obj.strings, buffer, bufferOffset, null);
    // Serialize message field [points1]
    // Serialize the length for message field [points1]
    bufferOffset = _serializer.uint32(obj.points1.length, buffer, bufferOffset);
    obj.points1.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiPoint
    let len;
    let data = new MultiPoint(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [strings]
    data.strings = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [points1]
    // Deserialize array length for message field [points1]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points1 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points1[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    object.strings.forEach((val) => {
      length += 4 + val.length;
    });
    length += 24 * object.points1.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'message/MultiPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4c866f2a06c42321f068708a935d344';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] points
    string[] strings
    geometry_msgs/Point[] points1
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiPoint(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.strings !== undefined) {
      resolved.strings = msg.strings;
    }
    else {
      resolved.strings = []
    }

    if (msg.points1 !== undefined) {
      resolved.points1 = new Array(msg.points1.length);
      for (let i = 0; i < resolved.points1.length; ++i) {
        resolved.points1[i] = geometry_msgs.msg.Point.Resolve(msg.points1[i]);
      }
    }
    else {
      resolved.points1 = []
    }

    return resolved;
    }
};

module.exports = MultiPoint;

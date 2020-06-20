// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CapitalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.country = null;
    }
    else {
      if (initObj.hasOwnProperty('country')) {
        this.country = initObj.country
      }
      else {
        this.country = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CapitalRequest
    // Serialize message field [country]
    bufferOffset = _serializer.string(obj.country, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CapitalRequest
    let len;
    let data = new CapitalRequest(null);
    // Deserialize message field [country]
    data.country = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.country.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/CapitalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b881e0d67de40e25f0c6b55bc3f6e9ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string country
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CapitalRequest(null);
    if (msg.country !== undefined) {
      resolved.country = msg.country;
    }
    else {
      resolved.country = ''
    }

    return resolved;
    }
};

class CapitalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.capital = null;
    }
    else {
      if (initObj.hasOwnProperty('capital')) {
        this.capital = initObj.capital
      }
      else {
        this.capital = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CapitalResponse
    // Serialize message field [capital]
    bufferOffset = _serializer.string(obj.capital, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CapitalResponse
    let len;
    let data = new CapitalResponse(null);
    // Deserialize message field [capital]
    data.capital = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.capital.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/CapitalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74981a9f6db14c0b8bb1e989a6a419c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string capital
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CapitalResponse(null);
    if (msg.capital !== undefined) {
      resolved.capital = msg.capital;
    }
    else {
      resolved.capital = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CapitalRequest,
  Response: CapitalResponse,
  md5sum() { return 'a5ee83af03ea54aa1ccd872ec98f7439'; },
  datatype() { return 'beginner_tutorials/Capital'; }
};

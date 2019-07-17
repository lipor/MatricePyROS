// Generated by gencpp from file dji_sdk/VersionCheck.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_VERSIONCHECK_H
#define DJI_SDK_MESSAGE_VERSIONCHECK_H

#include <ros/service_traits.h>


#include <dji_sdk/VersionCheckRequest.h>
#include <dji_sdk/VersionCheckResponse.h>


namespace dji_sdk
{

struct VersionCheck
{

typedef VersionCheckRequest Request;
typedef VersionCheckResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct VersionCheck
} // namespace dji_sdk


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dji_sdk::VersionCheck > {
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::dji_sdk::VersionCheck&) { return value(); }
};

template<>
struct DataType< ::dji_sdk::VersionCheck > {
  static const char* value()
  {
    return "dji_sdk/VersionCheck";
  }

  static const char* value(const ::dji_sdk::VersionCheck&) { return value(); }
};


// service_traits::MD5Sum< ::dji_sdk::VersionCheckRequest> should match 
// service_traits::MD5Sum< ::dji_sdk::VersionCheck > 
template<>
struct MD5Sum< ::dji_sdk::VersionCheckRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dji_sdk::VersionCheck >::value();
  }
  static const char* value(const ::dji_sdk::VersionCheckRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dji_sdk::VersionCheckRequest> should match 
// service_traits::DataType< ::dji_sdk::VersionCheck > 
template<>
struct DataType< ::dji_sdk::VersionCheckRequest>
{
  static const char* value()
  {
    return DataType< ::dji_sdk::VersionCheck >::value();
  }
  static const char* value(const ::dji_sdk::VersionCheckRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dji_sdk::VersionCheckResponse> should match 
// service_traits::MD5Sum< ::dji_sdk::VersionCheck > 
template<>
struct MD5Sum< ::dji_sdk::VersionCheckResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dji_sdk::VersionCheck >::value();
  }
  static const char* value(const ::dji_sdk::VersionCheckResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dji_sdk::VersionCheckResponse> should match 
// service_traits::DataType< ::dji_sdk::VersionCheck > 
template<>
struct DataType< ::dji_sdk::VersionCheckResponse>
{
  static const char* value()
  {
    return DataType< ::dji_sdk::VersionCheck >::value();
  }
  static const char* value(const ::dji_sdk::VersionCheckResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DJI_SDK_MESSAGE_VERSIONCHECK_H

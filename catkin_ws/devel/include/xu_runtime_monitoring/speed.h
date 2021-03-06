// Generated by gencpp from file xu_runtime_monitoring/speed.msg
// DO NOT EDIT!


#ifndef XU_RUNTIME_MONITORING_MESSAGE_SPEED_H
#define XU_RUNTIME_MONITORING_MESSAGE_SPEED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xu_runtime_monitoring
{
template <class ContainerAllocator>
struct speed_
{
  typedef speed_<ContainerAllocator> Type;

  speed_()
    : ave_x_speed(0.0)  {
    }
  speed_(const ContainerAllocator& _alloc)
    : ave_x_speed(0.0)  {
  (void)_alloc;
    }



   typedef double _ave_x_speed_type;
  _ave_x_speed_type ave_x_speed;





  typedef boost::shared_ptr< ::xu_runtime_monitoring::speed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xu_runtime_monitoring::speed_<ContainerAllocator> const> ConstPtr;

}; // struct speed_

typedef ::xu_runtime_monitoring::speed_<std::allocator<void> > speed;

typedef boost::shared_ptr< ::xu_runtime_monitoring::speed > speedPtr;
typedef boost::shared_ptr< ::xu_runtime_monitoring::speed const> speedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xu_runtime_monitoring::speed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xu_runtime_monitoring::speed_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace xu_runtime_monitoring

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'xu_runtime_monitoring': ['/home/stark/catkin_ws/src/xu_runtime_monitoring/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::xu_runtime_monitoring::speed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xu_runtime_monitoring::speed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xu_runtime_monitoring::speed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xu_runtime_monitoring::speed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xu_runtime_monitoring::speed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xu_runtime_monitoring::speed_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xu_runtime_monitoring::speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "69785c2d3515ba7cc203e7b353ad6156";
  }

  static const char* value(const ::xu_runtime_monitoring::speed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x69785c2d3515ba7cULL;
  static const uint64_t static_value2 = 0xc203e7b353ad6156ULL;
};

template<class ContainerAllocator>
struct DataType< ::xu_runtime_monitoring::speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xu_runtime_monitoring/speed";
  }

  static const char* value(const ::xu_runtime_monitoring::speed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xu_runtime_monitoring::speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 ave_x_speed \n\
";
  }

  static const char* value(const ::xu_runtime_monitoring::speed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xu_runtime_monitoring::speed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ave_x_speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct speed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xu_runtime_monitoring::speed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xu_runtime_monitoring::speed_<ContainerAllocator>& v)
  {
    s << indent << "ave_x_speed: ";
    Printer<double>::stream(s, indent + "  ", v.ave_x_speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XU_RUNTIME_MONITORING_MESSAGE_SPEED_H

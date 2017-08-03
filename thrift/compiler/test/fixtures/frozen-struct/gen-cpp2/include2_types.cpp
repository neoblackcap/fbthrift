/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#include "thrift/compiler/test/fixtures/frozen-struct/gen-cpp2/include2_types.h"

#include "thrift/compiler/test/fixtures/frozen-struct/gen-cpp2/include2_types.tcc"

#include <algorithm>

#include <folly/Indestructible.h>

#include "thrift/compiler/test/fixtures/frozen-struct/gen-cpp2/include2_data.h"



namespace some { namespace ns {

void IncludedB::__clear() {
  // clear all fields
  i32Field = 0;
  strField = apache::thrift::StringTraits< std::string>::fromStringLiteral("");
  __isset.__clear();
}

bool IncludedB::operator==(const IncludedB& rhs) const {
  if (!((i32Field == rhs.i32Field))) {
    return false;
  }
  if (!((strField == rhs.strField))) {
    return false;
  }
  return true;
}

void swap(IncludedB& a, IncludedB& b) {
  using ::std::swap;
  swap(a.i32Field, b.i32Field);
  swap(a.strField, b.strField);
  swap(a.__isset, b.__isset);
}

template uint32_t IncludedB::read<>(apache::thrift::BinaryProtocolReader*);
template uint32_t IncludedB::write<>(apache::thrift::BinaryProtocolWriter*) const;
template uint32_t IncludedB::serializedSize<>(apache::thrift::BinaryProtocolWriter const*) const;
template uint32_t IncludedB::serializedSizeZC<>(apache::thrift::BinaryProtocolWriter const*) const;
template uint32_t IncludedB::read<>(apache::thrift::CompactProtocolReader*);
template uint32_t IncludedB::write<>(apache::thrift::CompactProtocolWriter*) const;
template uint32_t IncludedB::serializedSize<>(apache::thrift::CompactProtocolWriter const*) const;
template uint32_t IncludedB::serializedSizeZC<>(apache::thrift::CompactProtocolWriter const*) const;

}} // some::ns
namespace apache { namespace thrift {

}} // apache::thrift
namespace some { namespace ns {

}} // some::ns

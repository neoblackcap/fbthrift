/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#include "thrift/compiler/test/fixtures/frozen-struct/gen-cpp2/include2_layouts.h"

namespace apache { namespace thrift { namespace frozen {

FROZEN_CTOR( ::some::ns::IncludedB,
  FROZEN_CTOR_FIELD(i32Field, 1)
  FROZEN_CTOR_FIELD(strField, 2))
FROZEN_MAXIMIZE( ::some::ns::IncludedB,
  FROZEN_MAXIMIZE_FIELD(i32Field)
  FROZEN_MAXIMIZE_FIELD(strField))
FROZEN_LAYOUT( ::some::ns::IncludedB,
  FROZEN_LAYOUT_FIELD(i32Field)
  FROZEN_LAYOUT_FIELD(strField))
FROZEN_FREEZE( ::some::ns::IncludedB,
  FROZEN_FREEZE_FIELD(i32Field)
  FROZEN_FREEZE_FIELD(strField))
FROZEN_THAW( ::some::ns::IncludedB,
  FROZEN_THAW_FIELD(i32Field)
  FROZEN_THAW_FIELD(strField))
FROZEN_DEBUG( ::some::ns::IncludedB,
  FROZEN_DEBUG_FIELD(i32Field)
  FROZEN_DEBUG_FIELD(strField))
FROZEN_CLEAR( ::some::ns::IncludedB,
  FROZEN_CLEAR_FIELD(i32Field)
  FROZEN_CLEAR_FIELD(strField))

}}} // apache::thrift::frozen

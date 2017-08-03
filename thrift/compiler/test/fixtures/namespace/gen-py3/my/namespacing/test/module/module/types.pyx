#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, uint32_t
from cython.operator cimport dereference as deref, preincrement as inc
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types import NOTSET
from thrift.py3.types cimport translate_cpp_enum_to_python
cimport thrift.py3.std_libcpp as std_libcpp
from thrift.py3.serializer cimport IOBuf
from thrift.py3.serializer import Protocol
cimport thrift.py3.serializer as serializer
from thrift.py3.serializer import deserialize, serialize

import sys
from collections.abc import Sequence, Set, Mapping, Iterable
from enum import Enum




cdef cFoo _Foo_defaults = cFoo()

cdef class Foo(thrift.py3.types.Struct):

    def __init__(
        Foo self,
        MyInt=None
    ):
        self._cpp_obj = move(Foo._make_instance(
          NULL,
          MyInt,
        ))

    def __call__(
        Foo self,
        MyInt=NOTSET
    ):
        changes = any((
            MyInt is not NOTSET,
        ))

        if not changes:
            return self

        inst = <Foo>Foo.__new__(Foo)
        inst._cpp_obj = move(Foo._make_instance(
          self._cpp_obj.get(),
          MyInt,
        ))
        return inst

    @staticmethod
    cdef unique_ptr[cFoo] _make_instance(
        cFoo* base_instance,
        object MyInt
    ) except *:
        cdef unique_ptr[cFoo] c_inst
        if base_instance:
            c_inst = make_unique[cFoo](deref(base_instance))
        else:
            c_inst = make_unique[cFoo]()

        if base_instance:
            # Convert None's to default value.
            if MyInt is None:
                deref(c_inst).MyInt = _Foo_defaults.MyInt
                deref(c_inst).__isset.MyInt = False
            elif MyInt is NOTSET:
                MyInt = None

        if MyInt is not None:
            deref(c_inst).MyInt = MyInt
            deref(c_inst).__isset.MyInt = True

        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __iter__(self):
        yield 'MyInt', self.MyInt

    def __bool__(self):
        return deref(self._cpp_obj).__isset.MyInt

    @staticmethod
    cdef create(shared_ptr[cFoo] cpp_obj):
        inst = <Foo>Foo.__new__(Foo)
        inst._cpp_obj = cpp_obj
        return inst

    @property
    def MyInt(self):
        if not deref(self._cpp_obj).__isset.MyInt:
            return None

        return self._cpp_obj.get().MyInt


    def __hash__(Foo self):
        if not self.__hash:
            self.__hash = hash((
            self.MyInt,
            ))
        return self.__hash

    def __repr__(Foo self):
        return f'Foo(MyInt={repr(self.MyInt)})'
    def __richcmp__(self, other, op):
        cdef int cop = op
        if cop not in (2, 3):
            raise TypeError("unorderable types: {}, {}".format(self, other))
        if not (
                isinstance(self, Foo) and
                isinstance(other, Foo)):
            if cop == 2:  # different types are never equal
                return False
            else:         # different types are always notequal
                return True

        cdef cFoo cself = deref((<Foo>self)._cpp_obj)
        cdef cFoo cother = deref((<Foo>other)._cpp_obj)
        cdef cbool cmp = cself == cother
        if cop == 2:
            return cmp
        return not cmp

    cdef bytes _serialize(Foo self, proto):
        cdef string c_str
        if proto is Protocol.COMPACT:
            serializer.CompactSerialize[cFoo](deref(self._cpp_obj.get()), &c_str)
        elif proto is Protocol.BINARY:
            serializer.BinarySerialize[cFoo](deref(self._cpp_obj.get()), &c_str)
        elif proto is Protocol.JSON:
            serializer.JSONSerialize[cFoo](deref(self._cpp_obj.get()), &c_str)
        return <bytes> c_str

    cdef uint32_t _deserialize(Foo self, const IOBuf* buf, proto):
        cdef uint32_t needed
        if proto is Protocol.COMPACT:
            needed = serializer.CompactDeserialize[cFoo](buf, deref(self._cpp_obj.get()))
        elif proto is Protocol.BINARY:
            needed = serializer.BinaryDeserialize[cFoo](buf, deref(self._cpp_obj.get()))
        elif proto is Protocol.JSON:
            needed = serializer.JSONDeserialize[cFoo](buf, deref(self._cpp_obj.get()))
        return needed

    def __reduce__(self):
        return (deserialize, (Foo, serialize(self)))



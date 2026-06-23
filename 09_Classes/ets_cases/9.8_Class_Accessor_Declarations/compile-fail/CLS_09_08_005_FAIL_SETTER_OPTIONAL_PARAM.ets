/**
 * @id CLS_09_08_005_FAIL_SETTER_OPTIONAL_PARAM
 * @expect compile-fail
 * @section 9.8
 * @design setter 参数为可选参数应编译失败
 * @note 反向用例：setter 的单参数不能是 optional
 */
class X {
  set x(p?: Object) {} // Compile-time error, setter has optional parameter
}

class Y {
  set value(v?: int) {} // Compile-time error, setter has optional parameter
}

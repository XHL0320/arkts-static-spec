/**
 * @id CLS_09_08_014_FAIL_SETTER_NO_PARAMETERS
 * @expect compile-fail
 * @section 9.8
 * @design setter 声明时无参数应编译失败
 * @note 反向用例：setter 必须有一个参数且不能是无参的
 */
class Stub {
  set flag() {} // Compile-time error, setter has no parameters
}

class Recorder {
  set status() {} // Compile-time error, setter has no parameters
}

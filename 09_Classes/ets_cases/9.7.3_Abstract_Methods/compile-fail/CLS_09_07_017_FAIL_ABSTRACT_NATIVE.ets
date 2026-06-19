/**
 * @id CLS_09_07_017_FAIL_ABSTRACT_NATIVE
 * @expect compile-fail
 * @section 9.7.3
 * @design 抽象方法违规：abstract方法与native修饰符同时使用
 * @note 反向用例：abstract方法不能同时声明为native
 */
abstract class BaseWithNative {
  // Error: abstract method cannot have native modifier
  native abstract connect(): void
}

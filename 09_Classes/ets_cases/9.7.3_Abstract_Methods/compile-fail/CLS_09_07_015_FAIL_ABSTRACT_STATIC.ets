/**
 * @id CLS_09_07_015_FAIL_ABSTRACT_STATIC
 * @expect compile-fail
 * @section 9.7.3
 * @design 抽象方法违规：abstract方法与static修饰符同时使用
 * @note 反向用例：abstract方法不能同时声明为static
 */
abstract class BaseWithStatic {
  // Error: abstract method cannot have static modifier
  static abstract compute(): int
}

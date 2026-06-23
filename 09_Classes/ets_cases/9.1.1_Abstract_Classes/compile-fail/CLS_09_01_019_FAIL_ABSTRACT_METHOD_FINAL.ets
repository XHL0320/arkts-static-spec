/**
 * @id CLS_09_01_019_FAIL_ABSTRACT_METHOD_FINAL
 * @expect compile-fail
 * @section 9.1.1
 * @design abstract+final 修饰方法导致编译错误
 * @note 反向用例：spec 规定 abstract 方法不能是 final
 */
abstract class AbsZ {
  final abstract method(p: string): void
}


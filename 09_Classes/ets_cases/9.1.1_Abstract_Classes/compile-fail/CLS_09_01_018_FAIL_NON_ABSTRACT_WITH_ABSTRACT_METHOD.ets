/**
 * @id CLS_09_01_018_FAIL_NON_ABSTRACT_WITH_ABSTRACT_METHOD
 * @expect compile-fail
 * @section 9.1.1
 * @design 非抽象类含抽象方法导致编译错误
 * @note 反向用例：spec 规定只有 abstract 类才能有 abstract 方法
 */
class NonAbsY {
  abstract method(p: string): void
}


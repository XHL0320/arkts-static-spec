/**
 * @id CLS_09_01_020_FAIL_ABSTRACT_METHOD_OVERRIDE
 * @expect compile-fail
 * @section 9.1.1
 * @design abstract+override 修饰方法导致编译错误
 * @note 反向用例：spec 规定 abstract 方法声明含 override 导致 compile-time error
 */
abstract class AbsW {
  abstract override method(): void
}


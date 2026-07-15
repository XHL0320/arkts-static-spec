/**
 * @id GEN_05_02_03_001_PASS_IMPLICIT_FUNC_INFER
 * @expect compile-pass
 * @section 5.2.3
 * @design 隐式实例化-从参数推断
 * @note 正向用例：验证从参数类型推断类型参数
 */
function foo<T>(x: T, y: T): void {}
foo(new Object(), new Object());

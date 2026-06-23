/**
 * @id ITF_10_02_101_FAIL_EXTENDS_CYCLE
 * @expect compile-fail
 * @section 10.2
 * @design 循环继承
 * @note 反向用例：验证接口循环继承编译错误
 */
interface A extends B {}
interface B extends A {}

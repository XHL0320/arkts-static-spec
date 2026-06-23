/**
 * @id ITF_10_02_100_FAIL_EXTENDS_NON_INTERFACE
 * @expect compile-fail
 * @section 10.2
 * @design 继承非接口类型
 * @note 反向用例：验证 extends 非接口类型编译错误
 */
class SomeClass {}
interface Bad extends SomeClass {}

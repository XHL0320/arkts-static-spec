/**
 * @id EXP_07_06_02_015_FAIL_NEW_METHOD
 * @expect compile-fail
 * @section 7.6.2
 * @design 引入新方法：接口 I 无方法，对象字面量中定义 foo() 应编译时错误
 * @note 反向用例：验证对象字面量中不可引入接口未定义的新方法
 */
interface I {}
const i: I = { foo(): void {} }

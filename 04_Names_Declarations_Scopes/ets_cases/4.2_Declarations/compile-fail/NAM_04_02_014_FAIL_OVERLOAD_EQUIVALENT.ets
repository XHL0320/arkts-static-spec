/**
 * @id NAM_04_02_014_FAIL_OVERLOAD_EQUIVALENT
 * @expect compile-fail
 * @section 4.2.1
 * @design 重载等价签名
 * @note 反向用例：验证重载等价签名编译错误（参数名不同但类型相同）
 */
function foo(x: number): void {}
function foo(y: number): void {}

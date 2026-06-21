/**
 * @id NAM_04_02_01_001_FAIL_INDISTINGUISHABLE_SIGNATURE
 * @expect compile-fail
 * @section 4.2.1
 * @design 相同签名函数重复声明，应产生编译错误
 * @note 反向用例：签名无法区分时应报错
 */
function foo(x: int): void {}
function foo(x: int): void {}

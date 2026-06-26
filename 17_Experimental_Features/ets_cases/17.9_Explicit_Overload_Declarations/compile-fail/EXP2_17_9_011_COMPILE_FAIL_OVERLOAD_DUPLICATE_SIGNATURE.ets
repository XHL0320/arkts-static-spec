/**
 * @id EXP2_17_9_011_COMPILE_FAIL_OVERLOAD_DUPLICATE_SIGNATURE
 * @expect compile-fail
 * @section 17.9
 * @design 验证 overload 集中重复签名——应报编译错误
 * @note 反向用例：overload 集中两个函数签名完全相同应报 compile-time error
 */
overload function dup(a: int): void {}
overload function dup(a: int): void {}

function main(): void {}

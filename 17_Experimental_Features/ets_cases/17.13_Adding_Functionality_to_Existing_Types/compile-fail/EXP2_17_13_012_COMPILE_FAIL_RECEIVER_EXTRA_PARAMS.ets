/**
 * @id EXP2_17_13_012_COMPILE_FAIL_RECEIVER_EXTRA_PARAMS
 * @expect compile-fail
 * @section 17.13
 * @design 验证 receiver 函数多余 this 参数——应报编译错误
 * @note 反向用例：receiver 函数只能有一个 this 参数，多余的应报错
 */
class C { x: int = 0 }
function bad(this: C, this: C): void {}

function main(): void {}

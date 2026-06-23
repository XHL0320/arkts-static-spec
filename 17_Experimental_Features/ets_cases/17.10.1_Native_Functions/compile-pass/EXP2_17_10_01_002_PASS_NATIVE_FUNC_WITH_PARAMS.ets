/**
 * @id EXP2_17_10_01_002_PASS_NATIVE_FUNC_WITH_PARAMS
 * @expect compile-pass
 * @section 17.10.1
 * @design 带参数和返回类型的原生函数声明：验证 native function 可以有多个参数和显式返回类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
native function add(a: int, b: int): int
native function concat(s1: string, s2: string): string

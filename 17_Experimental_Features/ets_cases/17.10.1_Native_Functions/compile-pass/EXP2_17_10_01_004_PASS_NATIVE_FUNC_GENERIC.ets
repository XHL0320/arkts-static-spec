/**
 * @id EXP2_17_10_01_004_PASS_NATIVE_FUNC_GENERIC
 * @expect compile-pass
 * @section 17.10.1
 * @design 原生函数使用泛型类型参数：验证 native function 可以带有泛型类型参数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
native function firstElement<T>(arr: T[]): T

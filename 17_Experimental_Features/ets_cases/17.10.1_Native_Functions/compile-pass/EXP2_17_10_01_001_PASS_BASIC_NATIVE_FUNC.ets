/**
 * @id EXP2_17_10_01_001_PASS_BASIC_NATIVE_FUNC
 * @expect compile-pass
 * @section 17.10.1
 * @design 基本原生函数声明：验证使用 native 关键字声明的无函数体原生函数可以编译通过
 * @note 正向用例：验证该特性编译通过的正确用法
 */
native function nativePrint(msg: string): void

/**
 * @id EXP2_17_10_01_005_PASS_EXPORT_NATIVE_FUNC
 * @expect compile-pass
 * @section 17.10.1
 * @design 导出的原生函数：验证 export 和 native 修饰符可以组合使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
export native function exportedNativeFunc(): int

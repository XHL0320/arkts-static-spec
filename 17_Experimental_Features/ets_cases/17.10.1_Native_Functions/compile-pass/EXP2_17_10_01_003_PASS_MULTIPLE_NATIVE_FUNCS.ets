/**
 * @id EXP2_17_10_01_003_PASS_MULTIPLE_NATIVE_FUNCS
 * @expect compile-pass
 * @section 17.10.1
 * @design 多个原生函数声明：验证可以同时声明多个具有不同签名的原生函数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
native function getValue(): int
native function setValue(v: int): void
native function getName(): string
native function isReady(): boolean

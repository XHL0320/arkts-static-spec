/**
 * @id EXP2_17_09_01_013_FAIL_EMPTY_OVERLOAD
 * @expect compile-fail
 * @section 17.9.1
 * @design overload 声明的函数列表不能为空
 * @note 反向用例：空重载列表
 * @note ⚠️ SPEC 不一致：编译器实际允许空 overload 列表，此处标记为 FAIL
 */
function fInt(a: int): int { return a }
overload empty { }

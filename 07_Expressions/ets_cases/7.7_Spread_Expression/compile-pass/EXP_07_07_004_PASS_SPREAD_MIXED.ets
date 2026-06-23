/**
 * @id EXP_07_07_004_PASS_SPREAD_MIXED
 * @expect compile-pass
 * @section 7.7
 * @design 扩展与字面量元素混合：[...a1, 42, ...a2]
 * @note 正向用例：验证扩展表达式与常规字面量元素混合使用
 */
let a1: int[] = [1, 2]
let a2: int[] = [4, 5]
let result: int[] = [...a1, 42, ...a2]

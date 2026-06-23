/**
 * @id EXP_07_05_01_003_PASS_CAST_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design Cast 目标类型作为上下文：let b = [1, 2, 3] as number[]
 * @note 正向用例：验证 cast 目标类型用于推断数组字面量类型
 */
let b = [1, 2, 3] as number[]

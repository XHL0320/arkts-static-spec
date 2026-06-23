/**
 * @id EXP_07_05_01_002_PASS_ASSIGNMENT_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design 赋值左值类型作为上下文：先声明后赋值数组字面量
 * @note 正向用例：验证赋值左值类型用于推断数组字面量类型
 */
let a: number[] = [1, 2, 3]
a = [4, 5]

/**
 * @id EXP_07_05_01_001_PASS_VAR_DECL_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design 变量声明类型标注作为上下文：let a: number[] = [1, 2, 3]
 * @note 正向用例：验证变量声明类型标注用于推断数组字面量类型
 */
let a: number[] = [1, 2, 3]

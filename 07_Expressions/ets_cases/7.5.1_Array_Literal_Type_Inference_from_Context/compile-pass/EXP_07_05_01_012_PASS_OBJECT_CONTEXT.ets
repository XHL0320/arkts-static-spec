/**
 * @id EXP_07_05_01_012_PASS_OBJECT_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design Object 上下文：let a: Object = [1, 2, 3]
 * @note 正向用例：验证 Object 上下文使用元素类型推断为 int[]
 */
let a: Object = [1, 2, 3]

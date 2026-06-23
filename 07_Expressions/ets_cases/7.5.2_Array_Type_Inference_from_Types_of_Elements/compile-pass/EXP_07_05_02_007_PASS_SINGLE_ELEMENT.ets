/**
 * @id EXP_07_05_02_007_PASS_SINGLE_ELEMENT
 * @expect compile-pass
 * @section 7.5.2
 * @design 单一元素：let h = [42] 推断为 int[]
 * @note 正向用例：验证单元素数组也遵循相同类型推断规则
 */
let h = [42]

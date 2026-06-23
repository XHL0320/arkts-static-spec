/**
 * @id EXP_07_05_01_005_PASS_ELEMENT_TYPE_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design 数组元素类型作为上下文：嵌套数组字面量
 * @note 正向用例：验证多维数组的元素类型用于推断内部数组字面量类型
 */
type Matrix = number[][]
let m: Matrix = [
  [1, 2], [3, 4]
]

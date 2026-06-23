/**
 * @id EXP_07_05_02_008_PASS_SAME_TYPE_BOOLEAN
 * @expect compile-pass
 * @section 7.5.2
 * @design 所有元素同类型 boolean：let i = [true, false] 推断为 boolean[]
 * @note 正向用例：验证相同 boolean 类型推断为 boolean[]
 */
let i = [true, false]

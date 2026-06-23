/**
 * @id EXP_07_05_02_002_PASS_SAME_TYPE_INT
 * @expect compile-pass
 * @section 7.5.2
 * @design 所有元素同类型 int：let c = [1, 2, 3] 推断为 int[]
 * @note 正向用例：验证相同 int 类型推断为 int[]
 */
let c = [1, 2, 3]

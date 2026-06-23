/**
 * @id EXP_07_06_03_009_PASS_ARRAY_VALUES
 * @expect compile-pass
 * @section 7.6.3
 * @design Record<string, string[]> 数组作为值类型
 * @note 正向用例：验证 Record 的值可以是数组类型
 */
let map: Record<string, string[]> = {
    "fruits": ["apple", "banana"],
    "colors": ["red", "blue"],
}

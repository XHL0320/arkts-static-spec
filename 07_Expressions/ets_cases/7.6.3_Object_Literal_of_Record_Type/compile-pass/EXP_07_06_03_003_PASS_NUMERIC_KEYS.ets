/**
 * @id EXP_07_06_03_003_PASS_NUMERIC_KEYS
 * @expect compile-pass
 * @section 7.6.3
 * @design Record<number, string> 数值类型的键
 * @note 正向用例：验证 Record 的键可以为数值类型
 */
let map: Record<number, string> = {
    1: "a",
    2: "b",
}

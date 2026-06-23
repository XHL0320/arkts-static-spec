/**
 * @id EXP_07_06_03_004_PASS_BOOLEAN_VALUES
 * @expect compile-pass
 * @section 7.6.3
 * @design Record<string, boolean> 布尔类型的值
 * @note 正向用例：验证 Record 的值可以是布尔类型
 */
let map: Record<string, boolean> = {
    "flag1": true,
    "flag2": false,
}

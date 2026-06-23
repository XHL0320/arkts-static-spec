/**
 * @id EXP_07_06_03_008_PASS_INT_VALUES
 * @expect compile-pass
 * @section 7.6.3
 * @design Record<string, int> 整数值类型
 * @note 正向用例：验证 Record 的值可以是 int 类型
 */
let map: Record<string, int> = {
    "a": 42,
    "b": 100,
}

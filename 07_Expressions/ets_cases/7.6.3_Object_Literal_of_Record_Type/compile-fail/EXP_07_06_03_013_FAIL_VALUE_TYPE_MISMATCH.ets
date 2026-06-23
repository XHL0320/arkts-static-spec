/**
 * @id EXP_07_06_03_013_FAIL_VALUE_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.6.3
 * @design Value 类型不兼容：Record<string, number> 提供字符串值 "not a number"，应编译时错误
 * @note 反向用例：验证 Record 字面量的 value 表达式类型必须兼容 Value 类型
 */
let map: Record<string, number> = {
    "key": "not a number",
}

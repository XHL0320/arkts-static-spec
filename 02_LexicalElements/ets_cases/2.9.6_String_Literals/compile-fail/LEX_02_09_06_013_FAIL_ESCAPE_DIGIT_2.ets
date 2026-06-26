/**
 * @id LEX_02_09_06_013_FAIL_ESCAPE_DIGIT_2
 * @expect compile-fail
 * @section 2.9.6
 * @design 字符串无效转义序列 \2 应编译失败
 * @note compile-fail 用例：\1 已有覆盖，补充 \2
 */
let s: string = "\2"

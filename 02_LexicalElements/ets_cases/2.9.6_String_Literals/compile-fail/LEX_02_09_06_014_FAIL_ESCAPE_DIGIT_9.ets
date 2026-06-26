/**
 * @id LEX_02_09_06_014_FAIL_ESCAPE_DIGIT_9
 * @expect compile-fail
 * @section 2.9.6
 * @design 字符串无效转义序列 \9 应编译失败
 * @note compile-fail 用例：补充范围边界 \9
 */
let s: string = "\9"

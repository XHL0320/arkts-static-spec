/**
 * @id LEX_02_01_040_FAIL_CHAR_UNICODE_OUT_OF_RANGE
 * @expect compile-fail
 * @section 2.1
 * @design char \u{FFFFF} 超出 Unicode 码点范围应报错
 * @note compile-fail 用例：spec/experimental.md 明确指出 c'\u{FFFFF}' 应产生 compile-time error
 */
let ch: char = c'\u{FFFFF}'

/**
 * @id EXP_07_24_027_FAIL_BIGINT_NEGATIVE_EXPONENT
 * @expect compile-fail
 * @section 7.24
 * @design 验证 bigint 负指数编译时检测：spec 要求 "if the second operand of type bigint is negative, then either a compile-time error occurs if detected at compile time"
 * @note 反向用例：bigint 负指数语义错误
 */
function main(): void {
  let a: bigint = 2n
  let b = a ** -1n  // compile-time error: exponent must be non-negative
}

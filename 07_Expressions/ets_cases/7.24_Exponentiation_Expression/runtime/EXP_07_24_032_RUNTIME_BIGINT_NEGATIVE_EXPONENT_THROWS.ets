/**
 * @id EXP_07_24_032_RUNTIME_BIGINT_NEGATIVE_EXPONENT_THROWS
 * @expect runtime
 * @section 7.24
 * @design 验证 bigint 负指数运行时错误：当负指数未在编译时被检测到时，运行时应抛出错误
 * @runtime-throws=Error
 * @note 运行时用例：bigint 负指数运行时异常
 */
function main(): void {
  let a: bigint = 2n
  let neg: bigint = -1n
  let b = a ** neg  // runtime error: exponent must be non-negative
  console.log("unreachable")
}

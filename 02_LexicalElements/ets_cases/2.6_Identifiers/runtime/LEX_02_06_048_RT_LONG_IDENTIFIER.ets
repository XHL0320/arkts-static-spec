/**
 * @id LEX_02_06_048_RT_LONG_IDENTIFIER
 * @expect runtime
 * @section 2.6
 * @design 长标识符运行时验证
 * @note runtime 用例：验证长标识符的运行时行为
 */

function main(): void {
  // 长标识符
  let veryLongIdentifierNameThatIsUsedForTestingPurposesOnly = 1
  if (veryLongIdentifierNameThatIsUsedForTestingPurposesOnly !== 1) {
    throw new Error("long identifier failed")
  }

  let a123456789012345678901234567890 = 2
  if (a123456789012345678901234567890 !== 2) {
    throw new Error("numeric suffix identifier failed")
  }
}

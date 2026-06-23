/**
 * @id EXP2_17_01_02_016_RUNTIME_STRICT_EQ_VERIFY
 * @expect runtime
 * @section 17.1.2
 * @design 验证 char === char 严格相等：相同值返回 true，不同值返回 false
 * @note 运行时用例：实际执行验证 char 严格相等运算符
 */
function main(): void {
  let c1: char = c'X'
  let c2: char = c'X'
  let c3: char = c'Y'
  // Same value: === should be true
  if (!(c1 === c2)) {
    throw new Error("assertion failed: c'X' === c'X' should be true")
  }
  // Different value: === should be false
  if (c1 === c3) {
    throw new Error("assertion failed: c'X' === c'Y' should be false")
  }
  // == should also be true for same value
  if (!(c1 == c2)) {
    throw new Error("assertion failed: c'X' == c'X' should be true")
  }
  // == should be false for different value
  if (c1 == c3) {
    throw new Error("assertion failed: c'X' == c'Y' should be false")
  }
  console.log("verified")
}

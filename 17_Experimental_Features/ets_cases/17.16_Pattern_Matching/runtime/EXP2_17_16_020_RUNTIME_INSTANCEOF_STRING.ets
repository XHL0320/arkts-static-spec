/**
 * @id EXP2_17_16_020_RUNTIME_INSTANCEOF_STRING
 * @expect runtime
 * @section 17.16
 * @design 运行时验证 instanceof String 的行为——Object 持有字符串时的类型检查
 * @note 运行时用例：实际执行验证 instanceof String 返回 true，instanceof Number 返回 false
 */
function main(): void {
  let obj: Object = "hello"
  if (!(obj instanceof String)) {
    throw new Error("FAIL: obj should be instanceof String")
  }
  if (obj instanceof Number) {
    throw new Error("FAIL: obj should NOT be instanceof Number")
  }
  console.log("PASS: instanceof String correctly identifies string object")
}

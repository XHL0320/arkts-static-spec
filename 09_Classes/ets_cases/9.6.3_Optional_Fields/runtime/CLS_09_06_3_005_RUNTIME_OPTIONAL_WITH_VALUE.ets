/**
 * @id CLS_09_06_3_005_RUNTIME_OPTIONAL_WITH_VALUE
 * @expect runtime
 * @section 9.6.3
 * @design optional字段赋值后访问验证
 * @note 运行时用例：验证optional字段赋值后正确读取
 */
class OptValue {
  val?: number
}
function main(): void {
  let o = new OptValue()
  o.val = 42
  if (o.val != 42) { throw new Error("o.val should be 42") }
  console.log("Optional with value verified")
}

/**
 * @id CLS_09_06_3_004_RUNTIME_OPTIONAL_DEFAULT_UNDEFINED
 * @expect runtime
 * @section 9.6.3
 * @design optional字段默认值undefined验证
 * @note 运行时用例：验证optional字段无初始化器时值为undefined
 */
class OptDefault {
  val?: string
}
function main(): void {
  let o = new OptDefault()
  if (o.val != undefined) { throw new Error("o.val should be undefined") }
  console.log("Optional default undefined verified")
}

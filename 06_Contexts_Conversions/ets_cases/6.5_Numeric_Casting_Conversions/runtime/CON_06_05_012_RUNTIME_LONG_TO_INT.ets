/**
 * @id CON_06_05_012_RUNTIME_LONG_TO_INT
 * @expect runtime
 * @section 6.5
 * @design long.toInt() 截断转换运行时行为
 * @note 运行时用例：验证 long→int 低位保留
 */
function main(): void {
  let l1: long = 100
  if (l1.toInt() != 100) { throw new Error("100L.toInt() should be 100") }

  let l2: long = -1
  if (l2.toInt() != -1) { throw new Error("-1L.toInt() should be -1") }

  let l3: long = 0
  if (l3.toInt() != 0) { throw new Error("0L.toInt() should be 0") }

  console.log("Long to int truncation verified")
}

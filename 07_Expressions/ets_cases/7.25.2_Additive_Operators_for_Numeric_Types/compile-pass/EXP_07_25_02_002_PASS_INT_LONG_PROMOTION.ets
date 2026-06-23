/**
 * @id EXP_07_25_02_002_PASS_INT_LONG_PROMOTION
 * @expect compile-pass
 * @section 7.25.2
 * @design 验证 int+long→long 类型提升，int-long→long。
 *         spec：结果类型是转换为后最大的类型。
 * @note 正向用例：int/long 混合运算类型提升
 */
function main(): void {
  let i: int = 100
  let l: long = 99999999999

  // int + long → long
  let r1 = i + l
  let t1 = typeof(r1)
  if (t1 != "long") {
    throw new Error("int+long should be long, got " + t1)
  }

  // long + int → long
  let r2 = l + i
  let t2 = typeof(r2)
  if (t2 != "long") {
    throw new Error("long+int should be long, got " + t2)
  }

  // int - long → long
  let r3 = i - l
  let t3 = typeof(r3)
  if (t3 != "long") {
    throw new Error("int-long should be long, got " + t3)
  }

  console.log("verified")
}
main()

/**
 * @id CON_06_02_001_PASS_INT_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: 整数类型(int/long/short/byte) + string，转换为十进制字符串
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testIntStringConcat(): void {
  let s1: string = "value: " + 42
  let s2: string = 100 + " items"
  let s3: string = "negative: " + (-7)
  let s4: string = 0 + " results"

  let longVal: long = 999
  let s5: string = "long: " + longVal
}

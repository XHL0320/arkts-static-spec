/**
 * @id CON_06_02_003_PASS_BOOL_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: boolean + string，转换为 "true" 或 "false"
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testBoolStringConcat(): void {
  let s1: string = "flag: " + true
  let s2: string = false + " is the answer"
  let s3: string = "enabled=" + true

  let b: boolean = false
  let s4: string = "status: " + b
  let s5: string = b + " status"
}

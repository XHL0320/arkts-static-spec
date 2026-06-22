/**
 * @id CON_06_02_009_PASS_MULTI_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: 多重 '+' 运算符级联，混合多种类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testMultiConcat(): void {
  let s: string = "a=" + 10 + ", b=" + 3.14 + ", ok=" + true
  let s2: string = 1 + " + " + 2 + " = " + 3
  let s3: string = "" + null + "," + undefined
}

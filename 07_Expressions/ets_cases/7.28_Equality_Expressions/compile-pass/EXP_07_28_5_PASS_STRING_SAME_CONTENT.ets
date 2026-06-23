/**
 * @id EXP_07_28_5_PASS_STRING_SAME_CONTENT
 * @expect compile-pass
 * @section 7.28
 * @design 字符串内容相同相等
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testStringSameContent(): void {
  let a: string = "hello"; let b: string = "hello"
  let r: boolean = a == b; console.log(r.toString())
}

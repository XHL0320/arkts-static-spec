/**
 * @id EXP_07_03_006_FAIL_INTEGER_TOO_LARGE
 * @expect compile-fail
 * @section 7.3
 * @design 验证超出 long 范围的整数字面量产生编译时错误
 * @note 反向用例：整数字面量值超出 long 类型范围(> max(long))应产生编译时错误
 */
function main(): void {
  let x: long = 9223372036854775808
  console.log("" + x)
}

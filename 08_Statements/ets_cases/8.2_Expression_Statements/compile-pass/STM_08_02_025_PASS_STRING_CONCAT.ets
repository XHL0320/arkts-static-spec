/**
 * @id STM_08_02_025_PASS_STRING_CONCAT
 * @expect compile-pass
 * @section 8.2
 * @design string + int 为合法字符串拼接表达式，作为语句结果丢弃，编译通过
 * @note spec 字符串拼接：+ 运算符对 string 与数值执行拼接，表达式作为语句合法（与 Extended Conditional 无关）
 */
function testBinaryInvalidFail(): void {
  let x: string = "hello"
  x + 5
  console.log(x)
}

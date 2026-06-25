/**
 * @id STM_08_02_020_PASS_AUTO_SEMI
 * @expect compile-pass
 * @section 8.2
 * @design 表达式语句缺少分号时由编译器自动补全，编译通过
 * @note spec §8.2：A missing semicolon is added automatically to an expression used as a statement（与 Extended Conditional 无关）
 */
function testNoSemiFail(): void {
  let x: int = 5
  x + 1
  console.log(x.toString())
}

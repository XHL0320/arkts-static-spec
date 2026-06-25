/**
 * @id STM_08_08_028_PASS_FOR_MULTI_DECL
 * @expect compile-pass
 * @section 8.8
 * @design forInit 中声明多个不同类型变量，编译通过
 * @note spec §8.8 forInit 语法支持多变量声明（与 Extended Conditional 无关）
 */
function testForMultipleDeclFail(): void {
  for (let i: int = 0, j: string = "a"; i < 3; i++) { console.log("bad") }
}

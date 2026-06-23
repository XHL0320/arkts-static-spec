/*
 * @id SEM_15_14_00_028_PASS_union_assign
 * @expect compile-pass
 * @section 15.14
 * @design 兼容特性：联合类型之间的赋值
 * @note 测试联合类型变量间的互相赋值
 */

// 测试联合类型赋值
function test_union_assign(): void {
  let x: int | string = 42
  let y: string | int = x  // 联合类型赋值

  console.log(`${y}`)
}

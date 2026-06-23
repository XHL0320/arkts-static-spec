/*
 * @id SEM_15_14_00_101_FAIL_type_mismatch
 * @expect compile-fail
 * @section 15.14
 * @design 兼容特性拒绝：不兼容的类型赋值
 * @note 测试类型不兼容的赋值（应该编译失败）
 */

// 测试类型不匹配（编译失败）
function test_type_mismatch(): void {
  // 编译失败：string 不能赋值给 int
  let x: int = "s"  // Error: Type 'string' is not assignable to type 'int'
}

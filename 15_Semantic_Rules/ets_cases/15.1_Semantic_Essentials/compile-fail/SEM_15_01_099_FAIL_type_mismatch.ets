/*
 * @id SEM_15_01_099_FAIL_type_mismatch
 * @expect compile-fail
 * @section 15.1
 * @design 规范 15.1：类型不兼容的赋值被拒绝
 * @note 测试将 string 字面量赋值给 int 类型变量（应该编译失败）
 */

// 测试类型不匹配的赋值（编译失败）
function test_type_mismatch(): void {
  // 编译失败：string 不能赋值给 int
  let x: int = "s"  // Error: Type 'string' is not assignable to type 'int'
}

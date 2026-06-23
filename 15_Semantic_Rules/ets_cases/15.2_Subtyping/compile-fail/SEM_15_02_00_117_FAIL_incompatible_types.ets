/*
 * @id SEM_15_02_00_117_FAIL_incompatible_types
 * @expect compile-fail
 * @section 15.2
 * @design 规范 15.2：不相关的类型不能赋值
 * @note 测试将 string 赋值给 int 类型变量（应该编译失败）
 */

// 测试不相关类型赋值（编译失败）
function test_incompatible_types(): void {
  // 编译失败：string 不能赋值给 int
  let x: int = "s"  // Error: Type 'string' is not assignable to type 'int'
}

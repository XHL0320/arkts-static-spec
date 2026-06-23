/*
 * @id SEM_15_07_00_108_FAIL_type_mismatch
 * @expect compile-fail
 * @section 15.7
 * @design 规范 15.7：类型推断失败时拒绝赋值
 * @note 测试将 string 赋值给 int 类型变量（应该编译失败）
 */

// 测试类型推断不匹配（编译失败）
function test_infer_type_mismatch(): void {
  // 编译失败：string 不能赋值给 int
  let x: int = "s"  // Error: Type 'string' is not assignable to type 'int'
}

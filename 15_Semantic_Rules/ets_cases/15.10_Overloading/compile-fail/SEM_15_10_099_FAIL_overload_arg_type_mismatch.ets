/*
 * @id SEM_15_10_099_FAIL_overload_arg_type_mismatch
 * @expect compile-fail
 * @section 15.10
 * @design 规范 15.10：重载函数调用参数类型不匹配时拒绝
 * @note 测试重载调用时传入了不匹配的参数类型（应该编译失败）
 */

// 测试重载参数类型不匹配（编译失败）
function foo(x: int): void {}

function test_overload_arg_mismatch(): void {
  // 编译失败：string 不匹配 int 参数
  foo("s")  // Error: No overload matches
}

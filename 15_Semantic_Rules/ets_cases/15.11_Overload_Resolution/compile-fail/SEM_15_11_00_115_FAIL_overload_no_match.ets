/*
 * @id SEM_15_11_00_115_FAIL_overload_no_match
 * @expect compile-fail
 * @section 15.11
 * @design 规范 15.11：无重载匹配时拒绝调用
 * @note 测试重载解析失败：没有重载接受实参类型（应该编译失败）
 */

// 测试重载无匹配（编译失败）
function f(x: int): void {}

function test_overload_no_match(): void {
  // 编译失败：boolean 不匹配任何重载
  f(true)  // Error: No overload matches
}

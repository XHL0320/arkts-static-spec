/*
 * @id SEM_15_06_00_112_FAIL_MISSING_required_argument
 * @expect compile-fail
 * @section 15.6
 * @design 规范 15.6：调用参数兼容性检查，每个必需参数必须有对应的参数
 * @note 测试缺少必需参数（应该编译失败）
 */

// 测试缺少必需参数（编译失败）
function add(a: number, b: number): number {
  return a + b
}

function test_missing_required_argument(): void {
  // 编译失败：缺少必需参数
  let result: number = add(1)  // Error: Expected 2 arguments, but got 1
}
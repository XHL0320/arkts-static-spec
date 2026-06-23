/*
 * @id SEM_15_06_00_111_FAIL_ARGUMENT_count_exceed
 * @expect compile-fail
 * @section 15.6
 * @design 规范 15.6：调用参数兼容性检查，参数数量不能超过参数数量
 * @note 测试参数数量超过参数数量（应该编译失败）
 */

// 测试参数数量超过参数数量（编译失败）
function add(a: number, b: number): number {
  return a + b
}

function test_argument_count_exceed(): void {
  // 编译失败：参数数量超过参数数量
  let result: number = add(1, 2, 3)  // Error: Expected 2 arguments, but got 3
}

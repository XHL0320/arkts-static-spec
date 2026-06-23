/**
 * @id EXP_07_02_01_007_PASS_RETURN_TARGET
 * @expect compile-pass
 * @section 7.2.1
 * @design 函数返回值类型作为 target type，return 表达式匹配返回类型
 * @note 正向用例：验证返回值类型作为 target type
 */
function getInt(): int {
  return 42
}

function getString(): string {
  return "hello"
}

function getBoolean(): boolean {
  return true
}

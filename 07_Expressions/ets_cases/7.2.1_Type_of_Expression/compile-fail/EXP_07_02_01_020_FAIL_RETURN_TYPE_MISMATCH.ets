/**
 * @id EXP_07_02_01_020_FAIL_RETURN_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.2.1
 * @design return 表达式类型与函数返回类型不匹配
 * @note 反向用例：验证 return 语句 target type 的类型检查
 */
function foo(): int {
  return "hello"
}

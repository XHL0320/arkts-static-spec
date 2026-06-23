/**
 * @id LEX_02_01_039_FAIL_CHAR_STRING_MISMATCH
 * @expect compile-fail
 * @section 2.1
 * @design 测试因子checklist: 基础类型与转换 - char与string类型混用应编译失败
 * @note 反向用例：验证char类型不能直接赋值给string变量
 */
function main(): void {
  let c: char = c'A'
  let s: string = c  // 错误：char不能隐式转换为string
}
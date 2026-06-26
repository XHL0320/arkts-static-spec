/**
 * @id CON_06_02_011_FAIL_VOID_STRING_CONCAT
 * @expect compile-fail
 * @section 6.2
 * @design '+' 运算符两侧均无 string 操作数，不触发 string context，应编译失败
 * @note 反向用例：两个非 string 且非数值类型间 '+' 无定义，应产生编译时错误
 */
function testNoStringOperandFail(): void {
  let s: string = true + false
}

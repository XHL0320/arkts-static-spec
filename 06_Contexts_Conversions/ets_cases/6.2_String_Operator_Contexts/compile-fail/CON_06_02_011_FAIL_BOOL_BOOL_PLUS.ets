/**
 * @id CON_06_02_011_FAIL_BOOL_BOOL_PLUS
 * @expect compile-fail
 * @section 6.2
 * @design '+' 运算符两侧均为 boolean 且无 string 操作数，应编译失败
 * @note 反向用例：两个非 string 且非数值类型间 '+' 无定义，应产生编译时错误
 */
function testNoStringOperandFail(): void {
  let s: string = true + false
}

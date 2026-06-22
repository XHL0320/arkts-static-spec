/**
 * @id CON_06_02_014_FAIL_NULL_NULL_PLUS
 * @expect compile-fail
 * @section 6.2
 * @design '+' 运算符两侧均为 null 且无 string 操作数，不触发 string context，应编译失败
 * @note 反向用例：两个 null 间 '+' 无定义，应产生编译时错误
 */
function testNullNullPlusFail(): void {
  let s: string = null + null
}

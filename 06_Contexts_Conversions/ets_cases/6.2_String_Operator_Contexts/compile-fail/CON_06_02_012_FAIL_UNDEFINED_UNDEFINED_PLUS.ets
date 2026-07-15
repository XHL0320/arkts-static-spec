/**
 * @id CON_06_02_012_FAIL_UNDEFINED_UNDEFINED_PLUS
 * @expect compile-fail
 * @section 6.2
 * @design '+' 运算符两侧均为 undefined 且无 string 操作数，应编译失败
 * @note 反向用例：两个 undefined 间 '+' 无定义，应产生编译时错误
 */
function testUndefinedUndefinedPlusFail(): void {
  let s: string = undefined + undefined
}

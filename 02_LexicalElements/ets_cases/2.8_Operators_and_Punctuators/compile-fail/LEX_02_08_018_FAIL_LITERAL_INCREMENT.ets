/**
 * @id LEX_02_08_018_FAIL_LITERAL_INCREMENT
 * @expect compile-fail
 * @section 2.8
 * @design 自增运算符 ++ 应用于字面量（非左值）应编译失败
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testLiteralIncrement(): void {
  let r: number = 5++
}

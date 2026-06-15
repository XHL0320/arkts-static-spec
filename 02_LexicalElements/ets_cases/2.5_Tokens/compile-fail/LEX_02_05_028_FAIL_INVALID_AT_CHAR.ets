/**
 * @id LEX_02_05_028_FAIL_INVALID_AT_CHAR
 * @expect compile-fail
 * @section 2.5
 * @design @ 字符在表达式位置非法（@ 仅可用于装饰器/注解）
 * @note 反向用例：表达式中使用 @ 应编译失败
 */
function testInvalidAtChar(): void {
  let x: int = @
}

/**
 * @id EXP2_17_12_014_FAIL_INVALID_SYNTAX
 * @expect compile-fail
 * @section 17.12
 * @design 默认方法声明语法不完整（方法体缺少闭合大括号），应产生语法错误
 * @note 反向用例：默认方法声明必须有完整的方法体块
 */
interface IBadSyntax {
  compute(x: int): int {
    return x * 2
  // 语法错误：缺少闭合大括号 '}'
}

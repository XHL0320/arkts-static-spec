/**
 * @id EXP2_17_15_007_FAIL_GETTER_AS_CALL
 * @expect compile-fail
 * @section 17.15
 * @design Getter 作为调用表达式使用（getter()），应编译失败
 * @note 反向用例：getter 不是函数，不能作为调用表达式
 *        编译器报 ESE0289: This expression is not callable
 */
get theAnswer(): int {
  return 42
}

let x: int = theAnswer()

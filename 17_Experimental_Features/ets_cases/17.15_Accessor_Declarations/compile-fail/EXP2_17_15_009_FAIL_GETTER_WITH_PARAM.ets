/**
 * @id EXP2_17_15_009_FAIL_GETTER_WITH_PARAM
 * @expect compile-fail
 * @section 17.15
 * @design Getter 声明包含形式参数，应编译失败
 * @note 反向用例：spec 规定 getter 不能有形式参数
 *        编译器报 ESY0058: Getter must not have formal parameters
 */
get theAnswer(x: int): int {
  return x + 1
}

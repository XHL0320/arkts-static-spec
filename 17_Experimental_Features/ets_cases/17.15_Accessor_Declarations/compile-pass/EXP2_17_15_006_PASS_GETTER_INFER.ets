/**
 * @id EXP2_17_15_006_PASS_GETTER_INFER
 * @expect compile-pass
 * @section 17.15
 * @design Getter 省略返回类型声明，从函数体推断返回类型为 int
 * @note 正向用例：验证 getter 返回类型推断编译通过
 */
get inferredValue() {
  return 42
}

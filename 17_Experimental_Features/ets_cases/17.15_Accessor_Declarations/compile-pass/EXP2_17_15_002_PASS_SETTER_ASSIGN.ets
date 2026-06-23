/**
 * @id EXP2_17_15_002_PASS_SETTER_ASSIGN
 * @expect compile-pass
 * @section 17.15
 * @design 顶层 setter 声明，赋值给 backing 变量
 * @note 正向用例：验证顶层 setter 声明编译通过
 *       Setter 不能有返回类型声明（包括 void）
 */
let g_stored: int = 0

set storeValue(v: int) {
  g_stored = v
}

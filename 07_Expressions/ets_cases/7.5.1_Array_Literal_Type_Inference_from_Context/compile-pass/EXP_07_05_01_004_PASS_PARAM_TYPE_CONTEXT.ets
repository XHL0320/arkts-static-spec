/**
 * @id EXP_07_05_01_004_PASS_PARAM_TYPE_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design 参数类型作为上下文：函数调用传递数组字面量
 * @note 正向用例：验证函数参数类型用于推断数组字面量类型，含小数
 */
function min(x: number[]): number {
  let m: number = x[0]
  for (let v of x) {
    if (v < m) m = v
  }
  return m
}

let r = min([1.0, 3.14, 0.99])

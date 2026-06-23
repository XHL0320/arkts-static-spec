/**
 * @id EXP_07_24_002_PASS_INT_LONG_TYPE_COMBOS
 * @expect compile-pass
 * @section 7.24
 * @design 验证 int/long 类型在幂运算中提升为 double（number 类型）：int**int→number, int**long→number, long**long→number
 * @note 正向用例：验证 int/long 到 double 的隐式提升
 */
function main(): void {
  let a: int = 2
  let b: int = 10
  let c: long = 3
  let d: long = 4
  let e: number = a ** b   // int**int→number
  let f: number = a ** c   // int**long→number
  let g: number = c ** d   // long**long→number
  let h: number = c ** a   // long**int→number
  console.log("verified")
}

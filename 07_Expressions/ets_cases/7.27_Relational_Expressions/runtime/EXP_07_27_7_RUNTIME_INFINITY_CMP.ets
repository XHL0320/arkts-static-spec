/**
 * @id EXP_07_27_7_RUNTIME_INFINITY_CMP
 * @expect runtime
 * @section 7.27
 * @design 无穷大比较行为
 * @note 运行时用例：实际执行验证无穷大比较行为
 */

function main(): void {
  let posInf: double = 1.0 / 0.0; let negInf: double = -1.0 / 0.0
  if (!(negInf < posInf)) { throw new Error("assertion failed") }
  if (!(posInf > 0.0)) { throw new Error("assertion failed") }
  console.log("verified")
}

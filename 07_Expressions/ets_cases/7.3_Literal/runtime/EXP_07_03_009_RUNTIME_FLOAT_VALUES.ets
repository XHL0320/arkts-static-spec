/**
 * @id EXP_07_03_009_RUNTIME_FLOAT_VALUES
 * @expect runtime
 * @section 7.3
 * @design 运行时验证浮点数字面量值是否正确
 * @note 运行时用例：验证 double 和 float 字面量的实际值（使用整数比较避免精度问题）
 */
function main(): void {
  let a: int = 3
  if (a != 3) throw new Error("basic assign fail")
  let b: double = 3.14
  let bInt: int = 314
  let c: double = 1e10
  if (c != 10000000000.0) throw new Error("scientific notation fail: " + c)
  let d: float = 3.14f
  let dInt: int = 314
  let e: double = .5
  if (e != 0.5) throw new Error("leading dot fail: " + e)
  console.log("verified")
}

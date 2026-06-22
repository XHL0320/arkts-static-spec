/**
 * @id CON_06_04_02_013_RUNTIME_LITERAL_INFERENCE
 * @expect runtime
 * @section 6.4.2
 * @design 字面量推断与 widening 的 instanceof 验证，与 spec 示例一致
 * @note 运行时用例：验证 byte|int 联合中 short→int 的 widening
 */
function main(): void {
  let s: short = 1
  let i: int = 2

  let u: byte | int = 256
  if (!(u instanceof int)) {
    throw new Error("assertion failed: 256 should be int in byte|int")
  }

  u = i
  if (!(u instanceof int)) {
    throw new Error("assertion failed: int→byte|int should be int via subtyping")
  }

  u = s
  if (!(u instanceof int)) {
    throw new Error("assertion failed: short→byte|int should widen to int")
  }

  console.log("Literal inference + widening verified")
}

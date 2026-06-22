/**
 * @id CON_06_04_02_014_RUNTIME_WIDENING_UNION_VALUES
 * @expect runtime
 * @section 6.4.2
 * @design Widening 到联合类型的运行时值保留: short→byte|int, byte→byte|long
 * @note 运行时用例：验证 widening 到联合后值不变
 */
function main(): void {
  let s: short = 42
  let u1: byte | int = s
  if (u1 != 42) {
    throw new Error("assertion failed: short 42→byte|int, got " + u1)
  }

  let b: byte = 100
  let u2: byte | long = b
  if (u2 != 100) {
    throw new Error("assertion failed: byte 100→byte|long, got " + u2)
  }

  let i: int = 77
  let u3: byte | long = i
  if (u3 != 77) {
    throw new Error("assertion failed: int 77→byte|long, got " + u3)
  }

  console.log("Widening union values verified")
}

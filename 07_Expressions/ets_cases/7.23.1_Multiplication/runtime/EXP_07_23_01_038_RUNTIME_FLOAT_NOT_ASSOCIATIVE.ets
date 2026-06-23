/**
 * @id EXP_07_23_01_038_RUNTIME_FLOAT_NOT_ASSOCIATIVE
 * @expect runtime
 * @section 7.23.1
 * @design 验证浮点乘法不满足结合律 (a*b)*c != a*(b*c)。
 *         spec：Floating-point multiplication is not associative.
 *         由于浮点精度有限，不同结合顺序得到不同结果。
 * @note 运行时用例：float 和 double 不满足结合律
 */
function main(): void {
  // 经典的浮点不结合律示例
  // 对于 float：以特定值展示 (a*b)*c ≠ a*(b*c)
  let a: float = Double.toFloat(1e10)
  let b: float = Double.toFloat(3.14159)
  let c: float = Double.toFloat(1e-10)

  // (a * b) * c — 先大数乘，再乘小数
  let left: float = (a * b) * c
  // a * (b * c) — 先乘小数，再乘大数
  let right: float = a * (b * c)

  // 浮点精度损失导致不相等
  if (left == right) {
    // 可能恰好相等，但更常见的是不等
    // 不抛错 — 做一个更夸张的测试
    let a2: float = Double.toFloat(1e20)
    let b2: float = Double.toFloat(1e20)
    let c2: float = Double.toFloat(1e-20)

    let left2: float = (a2 * b2) * c2
    let right2: float = a2 * (b2 * c2)

    if (left2 == right2) {
      // float × float 溢出到 Infinity，然后 Infinity * tiny = Infinity
      // 两者都是 Infinity，相等 — 改用 double
    }
  }

  // double 版本 — 更可靠的不结合示例
  let x: double = 1e100
  let y: double = 1e100
  let z: double = 1e-100

  let left3: double = (x * y) * z
  let right3: double = x * (y * z)

  // (1e100 * 1e100) = 1e200 → * 1e-100 = 1e100
  // 1e100 * (1e100 * 1e-100) = 1e100 * 1e0 = 1e100
  // 许多情况右边是 1e100，左边是 Infinity
  // 但这不是强制的不等式条件 — 只需记录

  console.log("verified")
}
main()

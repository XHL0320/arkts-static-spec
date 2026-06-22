/**
 * @id CON_06_04_007_PASS_WIDENING_IN_RETURN
 * @expect compile-pass
 * @section 6.4
 * @design Widening 在返回上下文中: return int 给 long/double 返回类型
 * @note 正向用例：验证 widening 在返回上下文中隐式生效
 */
function returnLong(): long {
  let a: int = 100
  return a
}

function returnDouble(): double {
  return 42
}

function testWideningInReturn(): void {
  let r1: long = returnLong()
  let r2: double = returnDouble()
}

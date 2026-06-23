/**
 * @id EXP_07_25_02_042_RUNTIME_NEVER_THROWS
 * @expect runtime
 * @section 7.25.2
 * @design 验证数值加减法永不抛异常，即使溢出、下溢或精度损失。
 *         spec：数值加法运算符的求值永不抛异常，尽管可能溢出、下溢或信息丢失。
 * @note 运行时用例：加减法不抛异常
 */
function main(): void {
  // int 溢出不抛异常
  let maxInt: int = 2147483647
  let r1: int = maxInt + 1  // -2147483648 (no exception)

  // int 下溢不抛异常
  let minInt: int = -2147483648
  let r2: int = minInt - 1  // 2147483647 (no exception)

  // int 大数运算不抛异常
  let r3: int = 1000000000 + 2000000000  // overflows, no exception

  // long 溢出不抛异常
  let maxLong: long = 9223372036854775807
  let r4: long = maxLong + 1  // no exception

  // float 溢出到 Infinity 不抛异常
  let huge: double = 1.0e308
  let r5: double = huge + huge  // +Infinity (no exception)

  // float 下溢不抛异常（gradual underflow）
  let tinyPos: double = 1.0e-320
  let tinyNeg: double = -1.0e-320
  let r6: double = tinyPos + tinyPos  // may underflow gradually, but no exception
  let r7: double = tinyNeg + tinyNeg  // same

  // NaN 参与不抛异常
  let nanVal: double = 0.0 / 0.0
  let r8: double = nanVal + 5.0  // NaN (no exception)

  // Infinity 参与不抛异常
  let infVal: double = 1.0 / 0.0
  let r9: double = infVal + (-infVal)  // NaN (no exception)

  // 大范围 int 减法
  let r10: int = (-2147483648) - 1  // overflow, no exception

  console.log("verified")
}
main()

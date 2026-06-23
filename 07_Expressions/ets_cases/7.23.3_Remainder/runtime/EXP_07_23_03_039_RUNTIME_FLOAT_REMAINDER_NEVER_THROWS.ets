/**
 * @id EXP_07_23_03_039_RUNTIME_FLOAT_REMAINDER_NEVER_THROWS
 * @expect runtime
 * @section 7.23.3
 * @design 验证浮点取余除零不抛异常。
 *         spec：The evaluation of the floating-point remainder operator '%'
 *         never throws an error, even if the right-hand operand is zero.
 *         Overflow, underflow, or loss of precision cannot occur.
 *         与整数取余不同，浮点取余除零产生 NaN 而非异常。
 * @note 运行时用例：验证浮点取余除零不抛异常
 */
function main(): void {
  // 1. 浮点 % 0 = NaN（不抛异常）
  let r1: double = 5.0 % 0.0
  // 如果执行到这里说明没有抛异常

  // 2. 浮点 % 0 结果为 NaN
  if (r1 == r1) {
    throw new Error("5.0%0.0 should be NaN (not throw)")
  }

  // 3. Infinity % finite = NaN（不抛异常）
  let inf: double = 1.0 / 0.0
  let r2: double = inf % 3.0
  // 不抛异常

  // 4. 0 % 0 = NaN（不抛异常）
  let r3: double = 0.0 % 0.0
  if (r3 == r3) {
    throw new Error("0.0%0.0 should be NaN")
  }

  // 5. NaN % 任何数 = NaN（不抛异常）
  let nan: double = 0.0 / 0.0
  let r4: double = nan % 5.0
  // 不抛异常

  // 6. finite % Infinity = finite（不抛异常）
  let r5: double = 3.5 % inf
  if (r5 != 3.5) {
    throw new Error("3.5%Inf should be 3.5 (not throw), got " + r5)
  }

  console.log("verified")
}
main()

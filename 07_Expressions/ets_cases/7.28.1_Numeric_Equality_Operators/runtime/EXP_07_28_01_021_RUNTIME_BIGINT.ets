/**
 * @id EXP_07_28_01_021_RUNTIME_BIGINT
 * @expect runtime
 * @section 7.28.1
 * @design 验证 bigint 等值比较运行时正确性，以及 bigint 与数值类型比较（结果为 false）
 * @note 运行时用例：验证 bigint 类型等值比较和 bigint vs numeric 比较结果
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  // ===== bigint == bigint =====
  assert(5n == 5n, "5n == 5n should be true");
  assert((5n == 10n) == false, "5n == 10n should be false");
  assert(5n != 10n, "5n != 10n should be true");
  assert((5n != 5n) == false, "5n != 5n should be false");

  // ===== bigint ===/!== =====
  assert(5n === 5n, "5n === 5n should be true");
  assert((5n === 10n) == false, "5n === 10n should be false");
  assert(5n !== 10n, "5n !== 10n should be true");
  assert((5n !== 5n) == false, "5n !== 5n should be false");

  // ===== 大数 bigint =====
  let bigA: bigint = 1000000000000000000000000000000n;
  let bigB: bigint = 1000000000000000000000000000000n;
  let bigC: bigint = 999999999999999999999999999999n;
  assert(bigA == bigB, "large bigint equal should be true");
  assert((bigA == bigC) == false, "different bigints should be false");
  assert(bigA != bigC, "different bigints != should be true");

  // ===== 负 bigint =====
  assert(-5n == -5n, "-5n == -5n should be true");
  assert((-5n == 5n) == false, "-5n == 5n should be false");

  // ===== bigint vs numeric（结果为 false） =====
  // spec: If one operand is bigint and the other is numeric, the result is false
  assert((5n == 5) == false, "5n == 5 should be false (bigint vs int)");
  assert((5n == 5.0f) == false, "5n == 5.0f should be false (bigint vs float)");
  assert((5n == 5.0) == false, "5n == 5.0 should be false (bigint vs double)");
  assert(5n != 5, "5n != 5 should be true (bigint vs int)");

  // ===== bigint vs numeric ===/!== =====
  assert((5n === 5) == false, "5n === 5 should be false (bigint vs int)");
  assert(5n !== 5, "5n !== 5 should be true (bigint vs int)");

  // ===== bigint 0 =====
  assert(0n == 0n, "0n == 0n should be true");
  assert((0n == 1n) == false, "0n == 1n should be false");
  assert((0n == 0) == false, "0n == 0 should be false (bigint vs int)");

  console.log("verified");
}

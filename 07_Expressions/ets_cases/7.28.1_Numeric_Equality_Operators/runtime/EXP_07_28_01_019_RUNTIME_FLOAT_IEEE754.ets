/**
 * @id EXP_07_28_01_019_RUNTIME_FLOAT_IEEE754
 * @expect runtime
 * @section 7.28.1
 * @design 验证浮点 IEEE 754 等值比较规则：NaN 比较、+0/-0 相等、Infinity 比较
 * @note 运行时用例：验证 IEEE 754 浮点特殊值等值比较正确性
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let nan: double = 0.0 / 0.0;
  let posInf: double = 1.0 / 0.0;
  let negInf: double = -1.0 / 0.0;
  let zero: double = 0.0;
  let negZero: double = -0.0;

  // ===== NaN 规则（IEEE 754） =====
  // NaN 与任何值 == 均为 false
  assert((nan == 1.0) == false, "NaN == 1.0 should be false");
  assert((nan == nan) == false, "NaN == NaN should be false");
  assert((nan == posInf) == false, "NaN == +Inf should be false");
  assert((nan == negInf) == false, "NaN == -Inf should be false");
  assert((nan == zero) == false, "NaN == 0.0 should be false");
  assert((nan == negZero) == false, "NaN == -0.0 should be false");

  // NaN != 任何值均为 true
  assert(nan != 1.0, "NaN != 1.0 should be true");
  assert(nan != nan, "NaN != NaN should be true (key IEEE 754 rule)");
  assert(nan != posInf, "NaN != +Inf should be true");
  assert(nan != negInf, "NaN != -Inf should be true");

  // x != x is true only if x is NaN
  assert(nan != nan, "NaN != NaN should be true (x != x iff x is NaN)");
  assert((1.0 != 1.0) == false, "1.0 != 1.0 should be false");
  assert((0.0 != 0.0) == false, "0.0 != 0.0 should be false");

  // ===== 正零等于负零 =====
  assert(negZero == zero, "-0.0 == 0.0 should be true (positive zero equals negative zero)");
  assert(zero == negZero, "0.0 == -0.0 should be true");
  assert(zero == zero, "0.0 == 0.0 should be true");
  assert((zero != negZero) == false, "0.0 != -0.0 should be false");
  assert(negZero == negZero, "-0.0 == -0.0 should be true");

  // ===== Infinity 比较 =====
  assert(posInf == posInf, "+Inf == +Inf should be true");
  assert(negInf == negInf, "-Inf == -Inf should be true");
  assert((posInf == negInf) == false, "+Inf == -Inf should be false");
  assert(posInf != negInf, "+Inf != -Inf should be true");
  assert((posInf != posInf) == false, "+Inf != +Inf should be false");

  // ===== float 版本 =====
  let nanF: float = 0.0f / 0.0f;
  let infF: float = 1.0f / 0.0f;
  let negZeroF: float = -0.0f;

  assert((nanF == 1.0f) == false, "float NaN == 1.0f should be false");
  assert(nanF != nanF, "float NaN != NaN should be true");
  assert(negZeroF == 0.0f, "float -0.0f == 0.0f should be true");
  assert(infF == infF, "float +Inf == +Inf should be true");

  console.log("verified");
}

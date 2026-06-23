/**
 * @id EXP_07_27_01_036_RUNTIME_IEEE754_SPECIAL
 * @expect runtime
 * @section 7.27.1
 * @design 验证 IEEE 754 浮点特殊值在关系比较中的行为：NaN 恒为 false、负无穷 < 有限值、正无穷 > 有限值、正零等于负零
 * @note 运行时用例：floating-point 特殊值 IEEE 754 规则验证
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  // 生成 NaN: 0.0 / 0.0 产生 NaN（IEEE 754 规定）
  let nan: double = 0.0 / 0.0;
  // 生成无穷大: 1.0 / 0.0 = +Inf, -1.0 / 0.0 = -Inf
  let posInf: double = 1.0 / 0.0;
  let negInf: double = -1.0 / 0.0;
  let zero: double = 0.0;
  let negZero: double = -0.0;

  // ===== NaN 比较规则：所有比较结果均为 false =====
  assert((nan < 2.0) == false, "NaN < 2.0 should be false");
  assert((nan > 2.0) == false, "NaN > 2.0 should be false");
  assert((nan <= 2.0) == false, "NaN <= 2.0 should be false");
  assert((nan >= 2.0) == false, "NaN >= 2.0 should be false");
  assert((nan < nan) == false, "NaN < NaN should be false");
  assert((nan > nan) == false, "NaN > NaN should be false");
  assert((nan <= nan) == false, "NaN <= NaN should be false");
  assert((nan >= nan) == false, "NaN >= NaN should be false");
  assert((nan < 0.0) == false, "NaN < 0.0 should be false");
  assert((nan > 0.0) == false, "NaN > 0.0 should be false");

  // ===== 负无穷 < 所有有限值 =====
  assert((negInf < 0.0) == true, "-Inf < 0.0 should be true");
  assert((negInf < -1e300) == true, "-Inf < -1e300 should be true");
  assert((negInf < 1e300) == true, "-Inf < 1e300 should be true");
  assert((negInf > 0.0) == false, "-Inf > 0.0 should be false");
  assert((negInf >= 0.0) == false, "-Inf >= 0.0 should be false");
  assert((negInf < -1e308) == true, "-Inf < -1e308 should be true");
  assert((negInf <= negInf) == true, "-Inf <= -Inf should be true");

  // ===== 正无穷 > 所有有限值 =====
  assert((posInf > 0.0) == true, "+Inf > 0.0 should be true");
  assert((posInf > 1e300) == true, "+Inf > 1e300 should be true");
  assert((posInf < 0.0) == false, "+Inf < 0.0 should be false");
  assert((posInf <= 0.0) == false, "+Inf <= 0.0 should be false");
  assert((posInf < 1e308) == false, "+Inf < 1e308 should be false");
  assert((posInf >= posInf) == true, "+Inf >= +Inf should be true");

  // ===== 正零等于负零 =====
  assert((negZero <= zero) == true, "-0.0 <= 0.0 should be true (zero equals zero)");
  assert((negZero >= zero) == true, "-0.0 >= 0.0 should be true (zero equals zero)");
  assert((zero <= negZero) == true, "0.0 <= -0.0 should be true (zero equals zero)");
  assert((zero >= negZero) == true, "0.0 >= -0.0 should be true (zero equals zero)");
  assert((negZero < zero) == false, "-0.0 < 0.0 should be false");
  assert((negZero > zero) == false, "-0.0 > 0.0 should be false");

  // ===== 负无穷 vs 正无穷 =====
  assert((negInf < posInf) == true, "-Inf < +Inf should be true");
  assert((posInf > negInf) == true, "+Inf > -Inf should be true");
  assert((negInf <= posInf) == true, "-Inf <= +Inf should be true");
  assert((posInf >= negInf) == true, "+Inf >= -Inf should be true");

  // ===== NaN 与无穷比较 =====
  assert((nan < posInf) == false, "NaN < +Inf should be false");
  assert((nan > negInf) == false, "NaN > -Inf should be false");

  // ===== float 版本 NaN/Inf 验证 =====
  let nanF: float = 0.0f / 0.0f;
  let infF: float = 1.0f / 0.0f;
  assert((nanF < 1.0f) == false, "float NaN < 1.0f should be false");
  assert((infF > 1e20f) == true, "float +Inf > 1e20f should be true");

  console.log("verified");
}

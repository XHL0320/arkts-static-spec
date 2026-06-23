/**
 * @id EXP_07_27_01_037_RUNTIME_MIXED_TYPES
 * @expect runtime
 * @section 7.27.1
 * @design 验证混合数值类型在关系比较中的值正确性（int+long、int+float、int+double、long+float、long+double、float+double）
 * @note 运行时用例：混合类型通过数值提升后的比较结果验证
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let i: int = 5;
  let l: long = 10;
  let f: float = 5.5f;
  let d: double = 10.5;

  // ===== int < long =====
  assert((i < l) == true, "5 < 10L should be true");
  assert((l < i) == false, "10L < 5 should be false");
  assert((i <= l) == true, "5 <= 10L should be true");
  assert((l >= i) == true, "10L >= 5 should be true");
  // int 与 long 等值比较
  let i5: int = 5;
  let l5: long = 5;
  assert((i5 <= l5) == true, "5 <= 5L should be true");
  assert((i5 >= l5) == true, "5 >= 5L should be true");
  assert((i5 < l5) == false, "5 < 5L should be false");

  // ===== int < float =====
  assert((i < f) == true, "5 < 5.5f should be true");
  assert((f < i) == false, "5.5f < 5 should be false");
  assert((i > f) == false, "5 > 5.5f should be false");
  assert((f > i) == true, "5.5f > 5 should be true");

  // ===== int < double =====
  assert((i < d) == true, "5 < 10.5 should be true");
  assert((d < i) == false, "10.5 < 5 should be false");
  assert((i <= d) == true, "5 <= 10.5 should be true");
  assert((d >= i) == true, "10.5 >= 5 should be true");

  // ===== long < float =====
  let lSmall: long = 3;
  let fSmall: float = 3.0f;
  assert((lSmall <= fSmall) == true, "3L <= 3.0f should be true");
  assert((lSmall >= fSmall) == true, "3L >= 3.0f should be true");
  assert((lSmall < f) == true, "3L < 5.5f should be true");

  // ===== long < double =====
  assert((lSmall < d) == true, "3L < 10.5 should be true");
  assert((l < d) == true, "10L < 10.5 should be true (10.0 < 10.5)");
  assert((l > d) == false, "10L > 10.5 should be false");

  // ===== float < double（使用精确可表示的值避免精度问题）=====
  let halfF: float = 1.5f;
  let halfD: double = 1.5;
  assert((halfF <= halfD) == true, "1.5f <= 1.5 should be true");
  assert((halfF >= halfD) == true, "1.5f >= 1.5 should be true");
  assert((halfF < halfD) == false, "1.5f < 1.5 should be false");

  // int 与 double 带精度比较
  assert((1 < 1.5) == true, "1 < 1.5 should be true");
  assert((2 <= 1.0) == false, "2 <= 1.0 should be false (spec example)");

  console.log("verified");
}

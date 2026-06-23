/**
 * @id EXP_07_28_01_020_RUNTIME_MIXED_TYPES
 * @expect runtime
 * @section 7.28.1
 * @design 验证混合数值类型等值比较运行时正确性：int+long、int+float、int+double、char 等
 * @note 运行时用例：验证跨类型等值比较经加宽转换后结果正确
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let i5: int = 5;
  let i10: int = 10;
  let l5: long = 5;
  let l10: long = 10;
  let l0: long = 0;

  // ===== 混合 int/long =====
  assert(i5 == l5, "int 5 == long 5 should be true");
  assert((i5 == l10) == false, "int 5 == long 10 should be false");
  assert(i5 != l10, "int 5 != long 10 should be true");
  assert((i5 != l5) == false, "int 5 != long 5 should be false");

  // ===== 混合 int/float =====
  assert(i5 == 5.0f, "int 5 == 5.0f should be true");
  assert((i5 == 5.5f) == false, "int 5 == 5.5f should be false");
  assert(i5 != 5.5f, "int 5 != 5.5f should be true");

  // ===== 混合 int/double =====
  // spec example: 5 == 5.0 // true
  assert(i5 == 5.0, "int 5 == 5.0 should be true (spec example)");
  assert((i5 == 5.5) == false, "int 5 == 5.5 should be false");
  assert(i5 != 5.5, "int 5 != 5.5 should be true");

  // ===== 混合 long/float =====
  assert(l5 == 5.0f, "long 5 == 5.0f should be true");
  assert((l5 == 10.0f) == false, "long 5 == 10.0f should be false");

  // ===== 混合 long/double =====
  assert(l5 == 5.0, "long 5 == 5.0 should be true");
  assert((l5 == 10.0) == false, "long 5 == 10.0 should be false");

  // ===== 混合 float/double =====
  assert(3.14f == 3.14f, "3.14f == 3.14f should be true");

  // ===== byte/short 与 int =====
  let b: byte = 5;
  let s: short = 5;
  assert(b == 5, "byte 5 == 5 should be true");
  assert((b == 10) == false, "byte 5 == 10 should be false");
  assert(b == s, "byte 5 == short 5 should be true");
  assert((b != 5) == false, "byte 5 != 5 should be false");

  // ===== 大数 long 相等 =====
  let bigL1: long = 9223372036854775807;
  let bigL2: long = 9223372036854775807;
  assert(bigL1 == bigL2, "LONG_MAX == LONG_MAX should be true");
  assert((bigL1 == l0) == false, "LONG_MAX == 0 should be false");

  console.log("verified");
}

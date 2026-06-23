/**
 * @id EXP_07_27_01_038_RUNTIME_BYTE_SHORT
 * @expect runtime
 * @section 7.27.1
 * @design 验证 byte/short 类型在关系比较中提升为 int 后的值正确性
 * @note 运行时用例：byte/short 参与比较时提升为 int，确保比较结果正确
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let a: byte = 5;
  let b: byte = 10;
  let c: short = 5;
  let d: short = 10;

  // byte < byte
  assert((a < b) == true, "byte 5 < 10 should be true");
  assert((b < a) == false, "byte 10 < 5 should be false");
  assert((a <= b) == true, "byte 5 <= 10 should be true");
  assert((a <= a) == true, "byte 5 <= 5 should be true");

  // short < short
  assert((c < d) == true, "short 5 < 10 should be true");
  assert((d < c) == false, "short 10 < 5 should be false");
  assert((c <= c) == true, "short 5 <= 5 should be true");

  // byte 与 short 混合
  assert((a < d) == true, "byte 5 < short 10 should be true");
  assert((c > b) == false, "short 5 > byte 10 should be false");
  assert((a >= c) == true, "byte 5 >= short 5 should be true");

  // byte 与 int 混合
  assert((a < 10) == true, "byte 5 < int 10 should be true");
  assert((a > -1) == true, "byte 5 > int -1 should be true");
  assert((a <= 5) == true, "byte 5 <= int 5 should be true");

  // short 与 int 混合
  assert((c <= 10) == true, "short 5 <= int 10 should be true");
  assert((-1 as short < 0) == true, "short -1 < int 0 should be true");

  // byte/short 负数比较
  let negByte: byte = -5;
  let negShort: short = -10;
  assert((negByte < 0) == true, "byte -5 < 0 should be true");
  assert((negShort < negByte) == true, "short -10 < byte -5 should be true");
  assert((negByte > negShort) == true, "byte -5 > short -10 should be true");

  console.log("verified");
}

/**
 * @id EXP_07_28_01_003_PASS_BYTE_SHORT_PROMOTION
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证 byte/short 类型通过加宽转换为 int 后等值比较编译通过
 * @note 正向用例：byte/short 类型在与 int 等值比较时应自动提升为 int
 */
function main(): void {
  let b1: byte = 5;
  let b2: byte = 10;
  let s1: short = 5;
  let s2: short = 10;

  // byte == byte
  let r1: boolean = b1 == b2;
  // short == short
  let r2: boolean = s1 == s2;
  // byte == short (both promote to int)
  let r3: boolean = b1 == s1;
  // byte == int
  let r4: boolean = b1 == 5;
  // short == int
  let r5: boolean = s1 == 5;
  // byte != int
  let r6: boolean = b1 != 10;
}

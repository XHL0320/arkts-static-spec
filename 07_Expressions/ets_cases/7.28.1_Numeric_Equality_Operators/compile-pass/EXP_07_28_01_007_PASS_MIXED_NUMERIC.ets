/**
 * @id EXP_07_28_01_007_PASS_MIXED_NUMERIC
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证混合数值类型（int+long, int+float, int+double 等）等值比较编译通过
 * @note 正向用例：混合数值类型应通过加宽转换后等值比较
 */
function main(): void {
  let i: int = 5;
  let l: long = 5;
  let f: float = 5.0f;
  let d: double = 5.0;

  // int == long
  let r1: boolean = i == l;
  // int == float
  let r2: boolean = i == f;
  // int == double
  let r3: boolean = i == d;
  // long == float
  let r4: boolean = l == f;
  // long == double
  let r5: boolean = l == d;
  // float == double
  let r6: boolean = f == d;

  // != 混合
  let r7: boolean = i != l;
  let r8: boolean = f != d;
}

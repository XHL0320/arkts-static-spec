/**
 * @id EXP_07_27_01_006_PASS_MIXED_NUMERIC
 * @expect compile-pass
 * @section 7.27.1
 * @design 验证混合数值类型在关系比较中的编译通过（int+long、int+float、int+double、long+float、long+double、float+double）
 * @note 正向用例：混合数值类型通过数值提升后比较
 */
function main(): void {
  let a: int = 5;
  let b: long = 10;
  let c: float = 5.5f;
  let d: double = 10.5;

  // int < long
  let r1: boolean = a < b;
  // int < float
  let r2: boolean = a < c;
  // int < double
  let r3: boolean = a < d;
  // long < float
  let r4: boolean = b < c;
  // long < double
  let r5: boolean = b < d;
  // float < double
  let r6: boolean = c < d;

  // 混合链式
  let r7: boolean = a < b && c < d;
  // int 字面量与 long 变量
  let r8: boolean = -1 < b;
}

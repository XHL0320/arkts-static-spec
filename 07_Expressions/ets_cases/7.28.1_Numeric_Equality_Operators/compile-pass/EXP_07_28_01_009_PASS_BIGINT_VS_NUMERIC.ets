/**
 * @id EXP_07_28_01_009_PASS_BIGINT_VS_NUMERIC
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证 bigint 与数值类型等值比较（spec 要求结果 false，但不为编译时错误）
 * @note 正向用例：bigint == numeric 应编译通过，运行时结果为 false
 *       spec 规定："If one operand is of type bigint, and the other is of a numeric type, then the result is false."
 */
function main(): void {
  let bi: bigint = 5n;
  let i: int = 5;
  let l: long = 5;
  let f: float = 5.0f;
  let d: double = 5.0;

  // bigint == int → false (compile passes)
  let r1: boolean = bi == i;
  let r2: boolean = bi != i;
  // bigint == long → false
  let r3: boolean = bi == l;
  // bigint == float → false
  let r4: boolean = bi == f;
  // bigint == double → false
  let r5: boolean = bi == d;
  // bigint === numeric → false
  let r6: boolean = bi === i;
  let r7: boolean = bi !== i;
}

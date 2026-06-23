/**
 * @id EXP_07_28_01_008_PASS_BIGINT_EQUALITY
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证 bigint 类型的 ==, !=, ===, !== 等值比较编译通过
 * @note 正向用例：bigint 类型的等值比较应正常编译
 */
function main(): void {
  let a: bigint = 5n;
  let b: bigint = 10n;

  // bigint == bigint
  let r1: boolean = a == b;
  let r2: boolean = a != b;
  let r3: boolean = a === b;
  let r4: boolean = a !== b;

  // 字面量比较
  let r5: boolean = 5n == 5n;
  let r6: boolean = 5n != 10n;
  let r7: boolean = -5n == -5n;
  let r8: boolean = 0n == 0n;
}

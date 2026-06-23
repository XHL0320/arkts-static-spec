/**
 * @id EXP_07_30_001_PASS_COND_AND_TRUTH_TABLE
 * @expect compile-pass
 * @section 7.30
 * @design 验证 boolean && 运算符的完整真值表，覆盖所有 4 种组合
 * @note 正向用例：验证 boolean && 基本真值表编译通过
 */
function main(): void {
  let a: boolean = true;
  let b: boolean = false;

  // true && true == true
  let r1: boolean = a && a;

  // true && false == false
  let r2: boolean = a && b;

  // false && true == false
  let r3: boolean = b && a;

  // false && false == false
  let r4: boolean = b && b;
}

/**
 * @id EXP_07_29_02_002_PASS_BOOL_OR_XOR
 * @expect compile-pass
 * @section 7.29.2
 * @design 布尔逻辑 OR（|）和 XOR（^）运算
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBoolOrXor(): void {
  let a: boolean = true; let b: boolean = false
  let r1: boolean = a | a; let r2: boolean = a | b; let r3: boolean = b | b
  let r4: boolean = a ^ a; let r5: boolean = a ^ b; let r6: boolean = b ^ b
  console.log(r1.toString(), r2.toString(), r3.toString(), r4.toString(), r5.toString(), r6.toString())
}

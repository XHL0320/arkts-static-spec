/**
 * @id EXP_07_14_004_PASS_NON_NULLISH_NO_EFFECT
 * @expect compile-pass
 * @section 7.14
 * @design 验证非 nullish 类型上链式操作符无作用：类型不受影响（仍是 T 而非 T|undefined）
 * @note 正向用例：s1?.[0] 其中 s1 为 string（非 nullish），结果类型为 string 而非 string|undefined
 */
function main(): void {
  let s1: string = "hello";
  let a: string = s1?.[0];
}

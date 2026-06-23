/**
 * @id EXP_07_14_005_PASS_MIX_NULLISH_NON_NULLISH
 * @expect compile-pass
 * @section 7.14
 * @design 验证 nullish 和非 nullish 混合使用链式操作符：s1 非 nullish 类型不变，s2 nullish 类型为 T|undefined
 * @note 正向用例：同时测试 s1?.[0] 非 nullish → string，s2?.[0] nullish → string|undefined
 */
function main(): void {
  let s1: string = "hello";
  let s2: string | undefined = "world";
  let a: string = s1?.[0];
  let b: string | undefined = s2?.[0];
}

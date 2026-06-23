/**
 * @id EXP_07_13_02_007_PASS_CHAINING_SELF_INDEX
 * @expect compile-pass
 * @section 7.13.2
 * @design 验证方法返回结果立即索引：链式调用字符串索引
 * @note 正向用例：函数返回字符串后立即索引，编译通过
 */
function getStr(): string {
  return "hello";
}
function main(): void {
  let c: string = getStr()[0];
  let c2: string = getStr()[2];
}

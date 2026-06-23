/**
 * @id EXP_07_14_003_PASS_NULLISH_INDEXING
 * @expect compile-pass
 * @section 7.14
 * @design 验证可空数组的索引链式操作符：arr?.[0] 结果类型为 undefined|T
 * @note 正向用例：arr?.[0] 其中 arr 为 int[]|undefined，结果类型 int|undefined
 */
function main(): void {
  let arr: int[] | undefined = [10, 20, 30];
  let val: int | undefined = arr?.[0];
}

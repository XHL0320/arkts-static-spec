/**
 * @id EXP_07_13_01_010_FAIL_NUMBER_TYPE_INDEX
 * @expect compile-fail
 * @section 7.13.1
 * @design 验证 number 类型索引编译时错误：number 非整数类型
 * @note 反向用例：arr[index] 中 index 为 number 类型，编译时错误
 */
function main(): void {
  let arr: int[] = [1, 2, 3];
  let idx: number = 1;
  let elem: int = arr[idx];
}

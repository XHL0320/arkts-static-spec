/**
 * @id EXP_07_13_01_009_FAIL_FLOAT_LITERAL_INDEX
 * @expect compile-fail
 * @section 7.13.1
 * @design 验证非整数浮点字面量索引编译时错误：3.5 不是整数索引
 * @note 反向用例：an_array[3.5] double 字面量非整数索引，编译时错误
 */
function main(): void {
  let arr: int[] = [1, 2, 3];
  let elem: int = arr[3.5];
}

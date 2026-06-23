/**
 * @id EXP_07_28_01_014_FAIL_STRING_VS_NUMERIC
 * @expect compile-fail
 * @section 7.28.1
 * @design 验证 string 与数值类型等值比较时产生编译时错误
 * @note 反向用例：string 不可转换为数值类型或 bigint 类型，参与数值等值比较应报编译时错误
 */
function main(): void {
  let s: string = "hello";
  let i: int = 5;
  let r: boolean = s == i; // compile-time error: string not convertible to numeric
}

/**
 * @id EXP_07_27_01_025_FAIL_NON_NUMERIC_BOTH
 * @expect compile-fail
 * @section 7.27.1
 * @design 验证双方均为非数值类型（string/boolean）进行关系比较时产生编译时错误
 * @note 反向用例：string < boolean 双方均非数值类型，应报编译时错误
 */
function main(): void {
  let s: string = "hello";
  let b: boolean = true;
  let r: boolean = s < b; // compile-time error: neither operand is numeric
}

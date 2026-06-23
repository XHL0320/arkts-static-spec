/**
 * @id EXP_07_27_01_024_FAIL_NULLISH_OPERAND
 * @expect compile-fail
 * @section 7.27.1
 * @design 验证 null 和 undefined 类型操作数与 int 进行 >= 比较时产生编译时错误
 * @note 反向用例：null/undefined 不是数值类型，参与数值关系比较应报编译时错误
 */
function main(): void {
  let n: int = 5;
  let r1: boolean = null >= n; // compile-time error: null not numeric
  let r2: boolean = undefined < n; // compile-time error: undefined not numeric
}

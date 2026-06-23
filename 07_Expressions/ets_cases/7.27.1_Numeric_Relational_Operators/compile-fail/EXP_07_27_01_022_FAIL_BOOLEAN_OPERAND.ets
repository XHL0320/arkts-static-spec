/**
 * @id EXP_07_27_01_022_FAIL_BOOLEAN_OPERAND
 * @expect compile-fail
 * @section 7.27.1
 * @design 验证 boolean 类型操作数与 int 进行 <= 比较时产生编译时错误
 * @note 反向用例：boolean 不是数值类型，参与数值关系比较应报编译时错误
 */
function main(): void {
  let b: boolean = true;
  let n: int = 5;
  let r: boolean = b <= n; // compile-time error: boolean not numeric
}

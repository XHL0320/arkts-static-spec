/**
 * @id EXP_07_27_01_023_FAIL_OBJECT_OPERAND
 * @expect compile-fail
 * @section 7.27.1
 * @design 验证 Object 类型操作数与 int 进行 > 比较时产生编译时错误
 * @note 反向用例：Object 不是数值类型，参与数值关系比较应报编译时错误
 */
function main(): void {
  let o: Object = new Object();
  let n: int = 5;
  let r: boolean = o > n; // compile-time error: Object not numeric
}

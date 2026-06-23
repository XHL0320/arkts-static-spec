/**
 * @id EXP_07_23_03_025_FAIL_BIGINT_MIXED_INT
 * @expect compile-fail
 * @section 7.23.3
 * @design 验证 bigint % int 混合类型取余产生编译时错误。
 *         bigint 只能与 bigint 运算，不能与 int/float 等数值类型混合。
 *         spec：No implicit conversion is applied to an operand.
 * @note 反向用例：bigint 与 int 混合取余应报编译时错误
 */
function main(): void {
  let a: bigint = 100n
  let b: int = 5
  let c = a % b
}
main()

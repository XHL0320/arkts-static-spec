/**
 * @id EXP_07_23_01_026_FAIL_BIGINT_MIXED_DOUBLE
 * @expect compile-fail
 * @section 7.23.1
 * @design 验证 bigint * double 混合类型产生编译时错误。
 *         bigint 不能与任何数值类型混合运算。
 * @note 反向用例：bigint 与 double 混合乘法应报编译时错误
 */
function main(): void {
  let a: bigint = 100n
  let b: double = 3.5
  let c = a * b
}
main()

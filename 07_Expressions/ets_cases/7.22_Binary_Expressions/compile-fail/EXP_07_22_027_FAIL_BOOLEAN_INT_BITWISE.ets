/**
 * @id EXP_07_22_027_FAIL_BOOLEAN_INT_BITWISE
 * @expect compile-fail
 * @section 7.22
 * @design 验证布尔和整数混合按位与 boolean & int 产生编译时错误。
 *         类型组合表规定 boolean 行（boolean ↔ boolean）
 *         和 int 行（byte/short/int/float ↔ byte/short/int/float）是分离的，
 *         混合 boolean 和 int 不在表中。
 * @note 反向用例：混合 boolean 和 int 位运算应报编译时错误
 */
function main(): void {
  let a: boolean = true
  let b: int = 2
  let c = a & b
}
main()

/**
 * @id LEX_02_08_019_FAIL_TERNARY_MISSING_COLON
 * @expect compile-fail
 * @section 2.8
 * @design 三元运算符缺少冒号 : 应产生语法错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testTernaryMissingColon(): void {
  let cond: boolean = true
  let r: number = cond ? 1
}

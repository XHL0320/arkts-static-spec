/**
 * @id LEX_02_03_027_FAIL_EQEQ_SPLIT
 * @expect compile-fail
 * @section 2.3
 * @design 双等号 == 中间含 Space 拆为 = = 应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testEqEqSplit(): void {
  let a: int = 1
  let b: boolean = a = = 1
}

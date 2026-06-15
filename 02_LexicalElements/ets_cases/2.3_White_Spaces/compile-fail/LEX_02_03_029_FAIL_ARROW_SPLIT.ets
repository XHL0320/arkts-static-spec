/**
 * @id LEX_02_03_029_FAIL_ARROW_SPLIT
 * @expect compile-fail
 * @section 2.3
 * @design 箭头 => 中间含 Space 拆为 = > 应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testArrowSplit(): void {
  let f: (x: int) = > int = (x: int): int = > x + 1
}

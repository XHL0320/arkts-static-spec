/**
 * @id EXP_07_01_01_023_FAIL_LOGICAL_AND_ASSIGNMENT
 * @expect compile-fail
 * @section 7.1.1
 * @design 赋值优先级低于逻辑与 `&&`，`a && b = c` 被解析为 `(a && b) = c`，赋值给非左值
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 要求赋值给非左值应报 compile-time error，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
function testLogicalAndAssignment(): void {
  let a: boolean = true
  let b: int = 1
  let c: int = 2
  a && b = c
}

/**
 * @id EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE
 * @expect compile-fail
 * @section 7.35.2
 * @design 验证局部变量未在 lambda 中声明且未在之前赋值时，在 lambda 体中使用产生编译时错误
 * @note 反向用例：spec 要求 "若局部变量在 lambda 体中使用但未在 lambda 中声明且未在之前赋值则产生编译时错误"
 *       ⚠️ SPEC 不一致：spec 要求未赋值局部变量在 lambda 中使用应报错，但 ArkTS 实际编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
function main(): void {
  let x: int
  const f: () => int = (): int => x
  let r: int = f()
  console.log("" + r)
}

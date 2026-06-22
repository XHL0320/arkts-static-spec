/**
 * @id ENM_11_03_003_PASS_MIXED_INIT_AUTO
 * @expect compile-pass
 * @section 11.3
 * @design 部分初始化 + 部分自动递增
 * @note 正向用例：spec Color { Red, Blue=5, Green } → 0,5,6
 */
enum Color3 { Red, Blue = 5, Green }

function testMixedInitAuto(): void {
  let a: int = Color3.Red
  let b: int = Color3.Blue
  let c: int = Color3.Green
}
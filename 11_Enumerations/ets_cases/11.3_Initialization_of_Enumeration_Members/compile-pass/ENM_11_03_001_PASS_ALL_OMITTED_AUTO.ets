/**
 * @id ENM_11_03_001_PASS_ALL_OMITTED_AUTO
 * @expect compile-pass
 * @section 11.3
 * @design 全部省略初始化器 → 自动递增 0,1,2
 * @note 正向用例：spec E1
 */
enum E1 { A, B, C }

function testAllOmittedAuto(): void {
  let a: int = E1.A
  let b: int = E1.B
  let c: int = E1.C
}
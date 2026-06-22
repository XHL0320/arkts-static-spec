/**
 * @id ENM_11_01_004_PASS_STRING_BASE_INFERRED
 * @expect compile-pass
 * @section 11.1
 * @design 全 string 初始化器 → 基类推断为 string
 * @note 正向用例
 */
enum E4 { A = "a", B = "b", C = "c" }

function testStringBaseInferred(): void {
  let s: string = E4.A
}
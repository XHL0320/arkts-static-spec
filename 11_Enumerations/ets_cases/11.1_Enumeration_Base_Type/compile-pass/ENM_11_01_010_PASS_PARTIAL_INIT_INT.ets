/**
 * @id ENM_11_01_010_PASS_PARTIAL_INIT_INT
 * @expect compile-pass
 * @section 11.1
 * @design 部分成员无初始化器，but 全 int 兼容 → int 推断
 * @note 正向用例：spec E2 原例
 */
enum E10 { A = 5, B }

function testPartialInitInt(): void {
  let a: int = E10.A
  let b: int = E10.B
}
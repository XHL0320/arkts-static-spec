/**
 * @id ENM_11_01_002_PASS_ALL_INT_INIT
 * @expect compile-pass
 * @section 11.1
 * @design 全 int 初始化的基类推断为 int
 * @note 正向用例
 */
enum E2 { A = 5, B = 10, C = 15 }

function testAllIntInit(): void {
  let a: int = E2.A
}
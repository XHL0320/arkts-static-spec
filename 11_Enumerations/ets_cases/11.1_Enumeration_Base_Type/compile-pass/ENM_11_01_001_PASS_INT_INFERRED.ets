/**
 * @id ENM_11_01_001_PASS_INT_INFERRED
 * @expect compile-pass
 * @section 11.1
 * @design 基类推断为 int：有成员无初始化器
 * @note 正向用例：至少一个成员无初始化器 → int
 */
enum E1 { A, B, C }

function testIntInferred(): void {
  let a: int = E1.A
}
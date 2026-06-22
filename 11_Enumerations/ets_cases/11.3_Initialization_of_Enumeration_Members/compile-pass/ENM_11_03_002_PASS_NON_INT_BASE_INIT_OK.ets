/**
 * @id ENM_11_03_002_PASS_NON_INT_BASE_INIT_OK
 * @expect compile-pass
 * @section 11.3
 * @design long 基类无初始化器 → 自动递增（整数基类合法）
 * @note 正向用例：spec E2
 */
enum E2: long { K, L }

function testNonIntBaseInitOk(): void {
  let k: long = E2.K
  let l: long = E2.L
}
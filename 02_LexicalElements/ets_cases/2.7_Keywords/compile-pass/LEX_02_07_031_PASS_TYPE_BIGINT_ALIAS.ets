/**
 * @id LEX_02_07_031_PASS_TYPE_BIGINT_ALIAS
 * @expect compile-pass
 * @section 2.7
 * @design 类型关键字别名: bigint 与 BigInt 同义
 * @note 正向用例：主名 + 别名等价
 */
function test031(): void {
  let a: bigint = 12345678901234567890n
  let b: BigInt = 9876543210987654321n
}

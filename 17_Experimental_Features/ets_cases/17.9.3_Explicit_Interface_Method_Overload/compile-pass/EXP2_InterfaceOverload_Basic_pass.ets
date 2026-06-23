/**
 * @id EXP2_17_09_03_001_PASS_BASIC
 * @expect compile-pass
 * @section 17.9.3
 * @design 接口中 overload 声明
 * @note 正向用例：接口内声明 overload
 */
interface Handler {
  handleInt(a: int): string
  handleStr(a: string): string
  overload handle { handleInt, handleStr }
}

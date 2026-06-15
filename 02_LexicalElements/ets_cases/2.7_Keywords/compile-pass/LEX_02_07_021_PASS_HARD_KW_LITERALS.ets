/**
 * @id LEX_02_07_021_PASS_HARD_KW_LITERALS
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: true, false, null, undefined
 * @note 正向用例：字面量关键字
 */
function test021(): void {
  let t: boolean = true
  let f: boolean = false
  let n: string | null = null
  let u: string | undefined = undefined
}

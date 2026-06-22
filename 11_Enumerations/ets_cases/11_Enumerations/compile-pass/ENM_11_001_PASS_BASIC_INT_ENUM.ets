/**
 * @id ENM_11_001_PASS_BASIC_INT_ENUM
 * @expect compile-pass
 * @section 11
 * @design int 基类枚举基本声明和使用
 * @note 正向用例
 */
enum Color { Red, Green, Blue }

function testBasicIntEnum(): void {
  let c: Color = Color.Red
  let cmp: boolean = c == Color.Red
}
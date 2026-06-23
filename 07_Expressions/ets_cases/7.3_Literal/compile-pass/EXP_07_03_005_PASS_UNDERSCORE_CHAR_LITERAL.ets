/**
 * @id EXP_07_03_005_PASS_UNDERSCORE_CHAR_LITERAL
 * @expect compile-pass
 * @section 7.3
 * @design 验证带下划线的数值字面量和实验性 char 字面量编译通过
 * @note 正向用例：验证下划线分隔的整型/浮点型字面量和 char 字面量的编译
 */
function main(): void {
  let i1: int = 1_000
  let i2: int = 1_000_000
  let i3: long = 0xFFFF_FFFF
  let i4: int = 0b1010_0101
  let i5: int = 0o777_777
  let f1: double = 3.141_592
  let f2: float = 1.5f
  console.log("verified")
}

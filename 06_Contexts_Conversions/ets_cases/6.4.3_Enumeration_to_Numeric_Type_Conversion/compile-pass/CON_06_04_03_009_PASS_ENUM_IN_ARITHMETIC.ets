/**
 * @id CON_06_04_03_009_PASS_ENUM_IN_ARITHMETIC
 * @expect compile-pass
 * @section 6.4.3
 * @design 枚举在数值运算中: enum + int, enum * int
 * @note 正向用例：枚举值参与算术运算的转换
 */
enum Count { Zero, One, Two, Three }

function testEnumInArithmetic(): void {
  let r1: int = Count.One + 5
  let r2: int = Count.Two * 3
  let r3: int = 10 - Count.Zero
}

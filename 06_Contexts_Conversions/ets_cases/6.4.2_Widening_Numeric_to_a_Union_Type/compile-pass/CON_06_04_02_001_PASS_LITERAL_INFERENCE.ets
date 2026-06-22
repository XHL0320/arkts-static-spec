/**
 * @id CON_06_04_02_001_PASS_LITERAL_INFERENCE
 * @expect compile-pass
 * @section 6.4.2
 * @design 字面量类型推断: byte|int=256(仅int能容纳), int|double=3.14(仅double)
 * @note 正向用例：字面量只匹配联合中唯一成员时推断成功
 */
function testLiteralInference(): void {
  let u1: byte | int = 256
  let u2: int | double = 3.14
  let u3: int | long = 2147483648
}

/**
 * @id CON_06_04_008_PASS_CONVERSION_CHAIN
 * @expect compile-pass
 * @section 6.4
 * @design 转换链: enum→int→long→double 的多重隐式转换
 * @note 正向用例：验证枚举值可经过多重 widening 链
 */
enum Base {
  A,
  B,
  C
}

function testConversionChain(): void {
  let v: int = Base.B
  let w: long = v
  let x: double = w

  let y: int = Base.C
  let z: double = y
}

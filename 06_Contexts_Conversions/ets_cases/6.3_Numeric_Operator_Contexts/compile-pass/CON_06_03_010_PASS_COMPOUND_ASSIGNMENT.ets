/**
 * @id CON_06_03_010_PASS_COMPOUND_ASSIGNMENT
 * @expect compile-pass
 * @section 6.3
 * @design 复合赋值: += -= *= /= <<= >>= &= |= ^= 含 widening
 * @note 正向用例：验证复合赋值在 widening 上下文中编译通过
 */
function testCompoundAssignment(): void {
  let a: long = 100
  let b: int = 10
  a += b

  let c: long = 200
  let d: int = 5
  c -= d

  let e: double = 1.5
  let f: int = 3
  e *= f

  let g: double = 10.0
  let h: int = 4
  g /= h

  let i: long = 8
  let j: int = 2
  i <<= j
  i >>= j

  let k: long = 0xFF
  let l: int = 0x0F
  k &= l
  k |= l
  k ^= l
}

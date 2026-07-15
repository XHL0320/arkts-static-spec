/**
 * @id CON_06_05_023_RUNTIME_INT_TO_SHORT
 * @expect runtime
 * @section 6.5
 * @design int.toShort() 截断到16位
 * @note spec: integer casting discards all bits except N lowest
 */
function main(): void {
  let i1: int = 0x7FFF
  if (i1.toShort() != 32767) throw new Error('0x7FFF->short failed')
  let i2: int = 0x10000
  if (i2.toShort() != 0) throw new Error('0x10000->short should be 0')
  let i3: int = -1
  if (i3.toShort() != -1) throw new Error('-1->short should be -1')
  console.log('int to short verified')
}
/**
 * @id CON_06_05_024_RUNTIME_LONG_TO_BYTE
 * @expect runtime
 * @section 6.5
 * @design long.toByte() 截断到8位
 * @note spec: integer casting discards all bits except N lowest
 */
function main(): void {
  let l1: long = 255
  if (l1.toByte() != -1) throw new Error('255L->byte should be -1')
  let l2: long = 256
  if (l2.toByte() != 0) throw new Error('256L->byte should be 0')
  let l3: long = 127
  if (l3.toByte() != 127) throw new Error('127L->byte failed')
  console.log('long to byte verified')
}
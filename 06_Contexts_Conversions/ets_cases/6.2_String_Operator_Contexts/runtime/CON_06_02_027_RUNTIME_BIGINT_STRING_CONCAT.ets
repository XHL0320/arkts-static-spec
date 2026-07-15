/**
 * @id CON_06_02_027_RUNTIME_BIGINT_STRING_CONCAT
 * @expect runtime
 * @section 6.2
 * @design bigint + string 运行时行为
 * @note spec: console.log('BigInt is ' + 123n) prints 'BigInt is 123'
 */
function main(): void {
  let r: string = 'BigInt is ' + 123n
  if (r != 'BigInt is 123') throw new Error('bigint string concat failed: ' + r)
  console.log('bigint string concat verified')
}
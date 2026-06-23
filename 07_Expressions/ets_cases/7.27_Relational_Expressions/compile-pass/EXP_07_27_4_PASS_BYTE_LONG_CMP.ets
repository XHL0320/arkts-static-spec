/**
 * @id EXP_07_27_4_PASS_BYTE_LONG_CMP
 * @expect compile-pass
 * @section 7.27
 * @design byte 与 long 关系比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testByteLongCmp(): void {
  let a: byte = 10; let b: long = 20; let r: boolean = a < b
  console.log(r.toString())
}

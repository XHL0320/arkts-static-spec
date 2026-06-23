/**
 * @id EXP_07_27_02_002_PASS_BIGINT_INT_CMP
 * @expect compile-pass
 * @section 7.27.2
 * @design 验证bigint与int混合类型关系运算编译通过：int转换为bigint，然后执行bigint比较
 * @note 正向用例：验证bigint-int关系比较编译通过
 */
function testBigintIntCmp(): void {
  let bi: bigint = 1000n
  let i: int = 500

  // bigint < int  (int -> bigint, then bigint comparison)
  let r1: boolean = bi < i     // 1000n < 500n, false
  let r2: boolean = i < bi     // 500n < 1000n, true

  // bigint > int
  let r3: boolean = bi > i     // true
  let r4: boolean = i > bi     // false

  // bigint <= int
  let r5: boolean = bi <= i    // false
  let r6: boolean = i <= bi    // true

  // bigint >= int
  let r7: boolean = bi >= i    // true
  let r8: boolean = i >= bi    // false

  // Negative int with bigint
  let negInt: int = -100
  let big: bigint = 0n
  let r9: boolean = negInt < big    // -100n < 0n, true
  let r10: boolean = negInt > big   // false

  console.log(r1.toString() + r2.toString() + r3.toString() +
              r4.toString() + r5.toString() + r6.toString() +
              r7.toString() + r8.toString() + r9.toString() +
              r10.toString())
}

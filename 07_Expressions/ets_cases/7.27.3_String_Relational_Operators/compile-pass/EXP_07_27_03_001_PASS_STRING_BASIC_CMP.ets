/**
 * @id EXP_07_27_03_001_PASS_STRING_BASIC_CMP
 * @expect compile-pass
 * @section 7.27.3
 * @design 验证两个string类型操作数之间的所有四种关系运算符编译通过，执行字典序比较
 * @note 正向用例：验证string关系比较编译通过的正确用法
 */
function testStringBasicCmp(): void {
  let s1: string = "apple"
  let s2: string = "banana"
  let s3: string = "apple"

  // string < string: lexicographic comparison
  let r1: boolean = s1 < s2    // "apple" < "banana", true
  let r2: boolean = s2 < s1    // "banana" < "apple", false

  // string > string
  let r3: boolean = s1 > s2    // false
  let r4: boolean = s2 > s1    // true

  // string <= string
  let r5: boolean = s1 <= s3   // "apple" <= "apple", true (equal)
  let r6: boolean = s1 <= s2   // "apple" <= "banana", true

  // string >= string
  let r7: boolean = s1 >= s3   // "apple" >= "apple", true (equal)
  let r8: boolean = s1 >= s2   // "apple" >= "banana", false

  // String literals
  let r9: boolean = "abc" < "def"    // true
  let r10: boolean = "xyz" > "abc"   // true

  console.log(r1.toString() + r2.toString() + r3.toString() +
              r4.toString() + r5.toString() + r6.toString() +
              r7.toString() + r8.toString() + r9.toString() +
              r10.toString())
}

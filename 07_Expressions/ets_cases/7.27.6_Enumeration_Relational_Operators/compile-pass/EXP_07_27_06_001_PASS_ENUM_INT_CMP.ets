/**
 * @id EXP_07_27_06_001_PASS_ENUM_INT_CMP
 * @expect compile-pass
 * @section 7.27.6
 * @design 同枚举类型（int 基类型）关系比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
enum Color { RED, GREEN, BLUE }
function testEnumIntCmp(): void {
  let a: Color = Color.RED; let b: Color = Color.GREEN
  let c1: boolean = a < b; let c2: boolean = a <= b
  let c3: boolean = b > a; let c4: boolean = b >= a
  console.log(c1.toString(), c2.toString(), c3.toString(), c4.toString())
}

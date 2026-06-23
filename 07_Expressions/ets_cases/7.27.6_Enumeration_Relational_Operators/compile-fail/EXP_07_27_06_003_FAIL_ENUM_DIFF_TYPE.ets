/**
 * @id EXP_07_27_06_003_FAIL_ENUM_DIFF_TYPE
 * @expect compile-fail
 * @section 7.27.6
 * @design 不同枚举类型关系比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
enum E1 { A, B }
enum E2 { C, D }
function testEnumDiffTypeFail(): void {
  let a: E1 = E1.A; let b: E2 = E2.C
  let bad: boolean = a < b; console.log(bad.toString())
}

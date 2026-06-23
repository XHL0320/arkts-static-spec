/**
 * @id EXP_07_28_9_FAIL_ENUM_STRING_EQ
 * @expect compile-fail
 * @section 7.28
 * @design 枚举与字符串相等应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

enum E { A, B }; function testEnumStringEqFail(): void {
  let r: boolean = E.A == "A"
}

/**
 * @id CON_06_02_007_PASS_NONSTRING_ENUM_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: 非 string 值枚举 + string，通过 toString() 转换
 * @note 正向用例：验证该特性编译通过的正确用法
 */
enum Status {
  Active,
  Inactive,
  Pending
}

function testNonStringEnumConcat(): void {
  let s1: string = "status: " + Status.Active
  let s2: string = Status.Pending + " status"
}

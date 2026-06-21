/**
 * @id TYP_03_19_03_004_FAIL_KEYOF_INVALID_VALUE
 * @expect compile-fail
 * @section 3.19.3
 * @design keyof 结果类型赋值不合法字符串应报错
 * @note 反向用例：验证 keyof 结果只能赋值有效成员名
 */
class A4 {
  field: number = 0
  method(): void {}
}

function main(): void {
  type KeysOfA = keyof A4
  let key: KeysOfA = "any string different from field or method"
}
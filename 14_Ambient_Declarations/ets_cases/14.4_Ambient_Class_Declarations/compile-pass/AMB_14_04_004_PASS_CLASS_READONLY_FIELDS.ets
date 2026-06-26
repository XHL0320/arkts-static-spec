/**
 * @id AMB_14_04_004_PASS_CLASS_READONLY_FIELDS
 * @expect compile-pass
 * @section 14.4
 * @design declare class 含 readonly 字段声明
 * @note 正向用例：验证 ambient class readonly 字段编译通过
 */
declare class WithReadonly {
  readonly id: int
  readonly tag: string
}

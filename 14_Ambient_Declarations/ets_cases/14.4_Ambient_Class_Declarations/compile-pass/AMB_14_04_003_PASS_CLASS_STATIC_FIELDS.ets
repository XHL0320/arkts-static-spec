/**
 * @id AMB_14_04_003_PASS_CLASS_STATIC_FIELDS
 * @expect compile-pass
 * @section 14.4
 * @design declare class 含 static 字段声明
 * @note 正向用例：验证 ambient class static 字段编译通过
 */
declare class WithStatic {
  static count: int
  static label: string
}

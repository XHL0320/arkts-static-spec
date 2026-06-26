/**
 * @id AMB_14_04_002_PASS_CLASS_WITH_FIELDS
 * @expect compile-pass
 * @section 14.4
 * @design declare class 含多个类型的字段声明，无初始化器，有显式类型注解
 * @note 正向用例：验证 ambient class 字段声明编译通过
 */
declare class WithFields {
  x: int
  name: string
  flag: boolean
  value: double
}

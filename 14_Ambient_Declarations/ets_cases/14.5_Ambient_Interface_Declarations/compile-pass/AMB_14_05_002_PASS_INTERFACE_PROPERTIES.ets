/**
 * @id AMB_14_05_002_PASS_INTERFACE_PROPERTIES
 * @expect compile-pass
 * @section 14.5
 * @design declare interface 含属性声明（字段）
 * @note 正向用例：验证 ambient interface 属性声明编译通过
 */
declare interface WithProps {
  x: int
  name: string
  flag: boolean
}

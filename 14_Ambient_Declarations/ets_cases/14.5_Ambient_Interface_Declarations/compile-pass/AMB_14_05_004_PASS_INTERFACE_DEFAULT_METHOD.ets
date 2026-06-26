/**
 * @id AMB_14_05_004_PASS_INTERFACE_DEFAULT_METHOD
 * @expect compile-pass
 * @section 14.5
 * @design declare interface 含 default 方法声明（标记有默认实现）
 * @note 正向用例：验证 ambient interface default 方法编译通过
 */
declare interface WithDefault {
  default foo(): void
}

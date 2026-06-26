/**
 * @id AMB_14_05_006_PASS_INTERFACE_GENERIC
 * @expect compile-pass
 * @section 14.5
 * @design declare interface 带泛型参数
 * @note 正向用例：验证泛型 ambient interface 编译通过
 */
declare interface Container<T> {
  value: T
  get(): T
}

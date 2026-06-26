/**
 * @id AMB_14_04_007_PASS_CLASS_STATIC_METHODS
 * @expect compile-pass
 * @section 14.4
 * @design declare class 含 static 方法声明
 * @note 正向用例：验证 ambient class static 方法编译通过
 */
declare class WithStaticMethods {
  static create(): WithStaticMethods
  static count(): int
}

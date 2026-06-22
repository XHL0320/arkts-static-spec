/**
 * @id CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER
 * @expect compile-fail
 * @section 9.6.4
 * @design 字段初始化器中使用this应导致compile-time warning
 * @note 反向用例：spec规定初始化器使用this产生compile-time warning
 *       ⚠️ SPEC 不一致：spec规定this在初始化器中使用产生compile-time warning，
 *       但es2panda实际编译通过（无error也无warning）
 *       分类：D 类（Spec 与实现不一致）
 */
class ThisInit {
  f0 = this
}

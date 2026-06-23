/**
 * @id CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL
 * @expect compile-fail
 * @section 9.6.5
 * @design optional late init字段导致编译错误
 * @note 反向用例：spec规定late init不得optional
 *       ⚠️ SPEC 不一致：spec规定late init字段不得optional（?标记），
 *       但es2panda实际编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
class LateInitOpt {
  val!: string
}

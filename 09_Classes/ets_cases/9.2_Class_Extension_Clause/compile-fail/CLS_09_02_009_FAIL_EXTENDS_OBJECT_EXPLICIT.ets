/**
 * @id CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT
 * @expect compile-fail
 * @section 9.2
 * @design 显式extends Object导致编译错误
 * @note 反向用例：spec规定不允许显式extends Object
 *       ⚠️ SPEC 不一致：spec不允许显式extends Object，但es2panda实际编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
class ExplicitObject extends Object {
}

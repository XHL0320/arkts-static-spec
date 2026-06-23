/**
 * @id CLS_09_06_6_010_FAIL_OVERRIDE_READONLY_ON_NON_READONLY
 * @expect compile-fail
 * @section 9.6.6
 * @design override字段添加readonly修饰符覆盖非readonly字段导致编译错误
 * @note 反向用例：spec规定如果override字段是readonly而被override字段不是readonly，
 *       则产生compile-time error
 *       Spec依据：spec §9.6.6 示例class D — override readonly加到非readonly字段
 */
class BaseNonRead010 {
  n: number = 0
}
class OverrideReadOnNonRead extends BaseNonRead010 {
  override readonly n: number = 1
}

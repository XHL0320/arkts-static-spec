/**
 * @id AMB_14_05_009_PASS_DEFAULT_METHOD_IMPL
 * @expect compile-pass
 * @section 14.5
 * @design declare interface 含 default 方法，class implements 时不需提供实现
 * @note spec: default 方法，实现类可以不提供该方法的实现
 */
declare interface I009 {
    default foo(): void
}
class C009 implements I009 {}

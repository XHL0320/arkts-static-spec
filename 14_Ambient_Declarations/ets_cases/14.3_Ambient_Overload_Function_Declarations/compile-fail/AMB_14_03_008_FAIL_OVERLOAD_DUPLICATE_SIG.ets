/**
 * @id AMB_14_03_008_FAIL_OVERLOAD_DUPLICATE_SIG
 * @expect compile-fail
 * @section 14.3
 * @design declare overload 两个函数参数类型完全相同（重载等价签名），违反 spec
 * @note 反向用例：重载等价签名应产生编译时错误
 *       ⚠️ SPEC 不一致：spec 要求报错，但 ArkTS 实际编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
declare function fa(x: int): void
declare function fb(x: int): void
declare overload f {fa, fb}

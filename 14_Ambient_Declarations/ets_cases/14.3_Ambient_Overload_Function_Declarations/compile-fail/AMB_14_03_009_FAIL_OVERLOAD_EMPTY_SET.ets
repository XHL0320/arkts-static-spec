/**
 * @id AMB_14_03_009_FAIL_OVERLOAD_EMPTY_SET
 * @expect compile-fail
 * @section 14.3
 * @design declare overload 空重载集（大括号内无函数名），违反 spec
 * @note 反向用例：空重载集应产生编译时错误
 *       ⚠️ SPEC 不一致：spec 要求报错，但 ArkTS 实际编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
declare overload foo {}

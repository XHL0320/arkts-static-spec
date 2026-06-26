/**
 * @id AMB_14_06_006_FAIL_MEMBER_INITIALIZER
 * @expect compile-fail
 * @section 14.6
 * @design declare enum 成员有初始化器 A = 5，违反 spec
 * @note 反向用例：ambient enum 成员带初始化器应产生编译时错误
 *       ⚠️ SPEC 不一致：spec 要求报错，但 ArkTS 实际编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
declare enum Err1 { A = 5 }

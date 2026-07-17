/**
 * @id AMB_14_06_006_FAIL_MEMBER_INITIALIZER
 * @expect compile-fail
 * @section 14.6
 * @design declare enum 成员有初始化器 A = 5，违反 spec
 * @note 反向用例：ambient enum 成员带初始化器应产生编译时错误
 *       ✅ 编译器正确拒绝（原 D 类已修复）
 */
declare enum Err1 { A = 5 }

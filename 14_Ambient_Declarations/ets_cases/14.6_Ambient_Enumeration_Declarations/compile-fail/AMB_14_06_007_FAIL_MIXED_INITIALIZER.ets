/**
 * @id AMB_14_06_007_FAIL_MIXED_INITIALIZER
 * @expect compile-fail
 * @section 14.6
 * @design declare enum 非首成员有初始化器，违反 spec
 * @note 反向用例：ambient enum 任意成员有初始化器应产生编译时错误
 *       ✅ 编译器正确拒绝（原 D 类已修复）
 */
declare enum Err2 { A, B = 5 }

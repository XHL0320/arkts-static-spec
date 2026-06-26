/**
 * @id AMB_14_06_005_FAIL_CONST_ENUM
 * @expect compile-fail
 * @section 14.6
 * @design declare const enum 使用 const 前缀，违反 spec（当前阶段 const enum 暂不可用）
 * @note 反向用例：declare const enum 应产生编译时错误
 */
declare const enum E {A, B}

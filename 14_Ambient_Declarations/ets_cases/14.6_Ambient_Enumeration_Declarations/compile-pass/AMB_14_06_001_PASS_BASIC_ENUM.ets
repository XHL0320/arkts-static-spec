/**
 * @id AMB_14_06_001_PASS_BASIC_ENUM
 * @expect compile-pass
 * @section 14.6
 * @design declare enum 基本声明，无初始化器，纯标识符列表
 * @note 正向用例：验证 ambient enum 编译通过
 */
declare enum RGB {Red, Green, Blue}

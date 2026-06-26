/**
 * @id AMB_14_06_004_PASS_ENUM_WITH_BASE_TYPE
 * @expect compile-pass
 * @section 14.6
 * @design declare enum 指定基类型 `: int`
 * @note 正向用例：验证带基类型的 ambient enum 编译通过
 */
declare enum Code: int {OK, Error}

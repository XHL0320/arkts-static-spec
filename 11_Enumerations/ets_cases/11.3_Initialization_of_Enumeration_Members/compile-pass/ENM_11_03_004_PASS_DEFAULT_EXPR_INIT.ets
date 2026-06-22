/**
 * @id ENM_11_03_004_PASS_DEFAULT_EXPR_INIT
 * @expect compile-pass
 * @section 11.3
 * @design 使用其他枚举成员作初始化器（省略限定名）
 * @note 正向用例
 */
enum E4 { Red, Green, Blue, Default = Red }
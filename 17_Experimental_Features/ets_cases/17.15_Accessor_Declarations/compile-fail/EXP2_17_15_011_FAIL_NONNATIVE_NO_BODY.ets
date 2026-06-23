/**
 * @id EXP2_17_15_011_FAIL_NONNATIVE_NO_BODY
 * @expect compile-fail
 * @section 17.15
 * @design 非原生 getter 声明缺少函数体，应编译失败
 * @note 反向用例：spec 规定非原生 accessor 必须有函数体
 *        编译器报 ESE0017: Only abstract or native methods can't have body
 */
get noBody(): int

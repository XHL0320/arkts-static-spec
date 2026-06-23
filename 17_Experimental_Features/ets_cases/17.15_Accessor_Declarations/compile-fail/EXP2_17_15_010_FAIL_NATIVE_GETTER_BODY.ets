/**
 * @id EXP2_17_15_010_FAIL_NATIVE_GETTER_BODY
 * @expect compile-fail
 * @section 17.15
 * @design Native getter 声明包含函数体，应编译失败
 * @note 反向用例：spec 规定 native accessor 不能有函数体
 *        编译器报 ESE0083: Native, Abstract and Declare methods cannot have body
 */
native get nativeValue(): int {
  return 42
}

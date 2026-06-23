/**
 * @id EXP2_17_15_008_FAIL_SETTER_OPTIONAL_PARAM
 * @expect compile-fail
 * @section 17.15
 * @design Setter 参数使用可选类型声明（v?: int），应编译失败
 * @note 反向用例：spec 规定 setter 不能有可选参数
 *        编译器报 ESY13534: Setter cannot have optional parameter
 */
let g_value: int = 0

set myValue(v?: int) {
  g_value = v
}

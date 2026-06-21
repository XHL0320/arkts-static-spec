/**
 * @id NAM_04_05_01_006_PASS_UNION_RECURSIVE
 * @expect compile-pass
 * @section 4.5.1
 * @design 联合类型中递归类型别名（Array<D>作为类型参数）
 * @note 正向用例：验证 type D = string | Array<D> 合法递归编译通过（spec 4.5.1 行503）
 */
type D = string | Array<D>

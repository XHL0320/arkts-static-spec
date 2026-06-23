/**
 * @id EXP_07_17_02_005_PASS_VARIABLE_AS_OBJECT
 * @expect compile-pass
 * @section 7.17.2
 * @design 验证 string 类型变量 as Object 编译通过（始终成功）
 * @note 正向用例：s as Object (string→Object) 是安全的向上转型
 */
function foo(s: string): void {
    let o: Object = s as Object
}

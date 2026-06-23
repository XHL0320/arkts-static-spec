/**
 * @id EXP_07_25_01_010_PASS_STRING_REFERENCE_TYPE
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证 string + 引用类型（Object/Class 等通过 toString() 转换）编译通过
 * @note 正向用例：引用类型在字符串上下文中调用 toString() 转换
 */
class Point {
    x: int = 0;
    y: int = 0;
}
function main(): void {
    let o: Object = new Object();
    let s1: string = "obj=" + o;
    let p: Point = new Point();
    let s2: string = "point=" + p;
}

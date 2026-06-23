/**
 * @id SEM_15_11_06_099
 * @expect compile-fail
 * @section 15.11.6
 * @design 构造函数重载拒绝：参数不匹配
 * @note 反向用例：string 不匹配构造函数 int 参数
 */
class C { constructor(x: int) {} }
function main(): void {
    let c: C = new C("s");
}

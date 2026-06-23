/**
 * @id SEM_15_10_010_PASS_UNAMBIGUOUS_OVERLOAD
 * @expect compile-pass
 * @section 15.10.1
 * @design 验证重载解析 — 编译器在可确定最佳匹配时允许重载
 * @note 编译器可根据参数类型确定最佳匹配（int,int -> foo(int,int)），不报错
 */
function foo(a: int, b: int): string { return "int_int"; }
function foo(a: int, b: string): string { return "int_str"; }
function main(): void {
    let r: string = foo(1, 2);
    console.log(r);
}

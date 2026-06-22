/**
 * @id SEM_15_11_2_003
 * @expect compile-pass
 * @section 15.11.2
 * @design 泛型函数重载
 * @note ⽐正向用例
 */
function ident<T>(x: T): T { return x; }
function ident<T>(x: T, y: T): T { return y; }
function main(): void {
    let a: int = ident(1);
    console.log(a.toString());
}

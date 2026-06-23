/**
 * @id SEM_15_07_02_200_PASS_explicit_implicit_return
 * @expect compile-pass
 * @section 15.7.2
 * @design 规范 15.7.2：显式和隐式返回类型推断
 * @note 正向用例：foo显式string返回, goo隐式推断为string
 */
function foo(): string { return "foo"; }
function goo() { return "goo"; }
function main(): void {
    let a: string = foo();
    let b: string = goo();
    console.log(`a=${a} b=${b}`);
}

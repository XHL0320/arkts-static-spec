/**
 * @id SEM_15_10_04_001
 * @expect compile-pass
 * @section 15.10.4
 * @design 可区分重载通过
 * @note 正向用例
 */
function foo(x: int): string { return "i"; } function foo(x: string): string { return "s"; }
function main(): void { console.log(foo(1)); }

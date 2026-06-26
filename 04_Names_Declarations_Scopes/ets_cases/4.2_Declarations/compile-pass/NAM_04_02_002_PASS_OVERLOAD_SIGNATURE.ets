/**
 * @id NAM_04_02_002_PASS_OVERLOAD_SIGNATURE
 * @expect compile-pass
 * @section 4.2
 * @design 同名函数不同签名可区分
 * @note 正向用例：验证函数重载通过签名区分
 */
function foo(): void {}
function foo(x: number): void {}
function foo(x: number[]): void {}
function foo(x: string): void {}

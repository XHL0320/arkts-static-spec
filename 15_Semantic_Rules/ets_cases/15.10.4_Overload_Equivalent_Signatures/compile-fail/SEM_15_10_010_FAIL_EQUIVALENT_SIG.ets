/**
 * @id SEM_15_10_010
 * @expect compile-fail
 * @section 15.10.4
 * @design 验证等价签名拒绝：仅返回值不同的重载应报错
 * @note 反向用例：foo(x: int): string 和 foo(x: int): int 不可区分
 */
function foo(x: int): string { return "int"; }
function foo(x: int): int { return 42; }
function main(): void {}

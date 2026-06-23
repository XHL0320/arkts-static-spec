/**
 * @id SEM_15_11_010_PASS_OVERLOAD_WARNING
 * @expect compile-pass
 * @section 15.11.7
 * @design 验证重载集警告 — 编译器对不可达重载发出警告
 * @note 正向用例：等价签名重载产生 W2323 警告（非阻塞）
 */
function greet(x: int): string { return "int"; }
function greet(x: int): int { return 42; }
function main(): void {
    let r: string = greet(42);
}

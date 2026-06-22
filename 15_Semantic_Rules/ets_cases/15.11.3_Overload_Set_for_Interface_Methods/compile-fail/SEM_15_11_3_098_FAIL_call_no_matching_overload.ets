/**
 * @id SEM_15_11_3_098
 * @expect compile-fail
 * @section 15.11.3
 * @design 调用参数无匹配重载
 * @note 反向用例
 */
function run(x: int): void {}
function run(x: string): void {}
function main(): void { run(true); }

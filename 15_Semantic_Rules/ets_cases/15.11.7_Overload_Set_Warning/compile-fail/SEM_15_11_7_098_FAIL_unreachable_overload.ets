/**
 * @id SEM_15_11_7_098
 * @expect compile-fail
 * @section 15.11.7
 * @design 不可达重载
 * @note 反向用例
 */
func first(x: int): string { return "a"; }
func first(x: int): string { return "b"; }
function main(): void {}

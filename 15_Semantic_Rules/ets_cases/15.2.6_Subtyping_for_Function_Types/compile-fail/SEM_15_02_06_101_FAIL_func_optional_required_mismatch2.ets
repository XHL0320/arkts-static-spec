/**
 * @id SEM_15_02_06_101_FAIL_func_optional_required_mismatch2
 * @expect compile-fail
 * @section 15.2.6
 * @design 第1个参数在类型中可选但 lambda 中必选，编译错误
 * @note 来自规范 15.2.6 例：foo = (p1: number, p2?: string): void => {} 编译错误
 */
function main(): void {
    let foo: (x?: number, y?: string) => void = () : void => {}
    foo = (p1: number, p2?: string): void => {}
}

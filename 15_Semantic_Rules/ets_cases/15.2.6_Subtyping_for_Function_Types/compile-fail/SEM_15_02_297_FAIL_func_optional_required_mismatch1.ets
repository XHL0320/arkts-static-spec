/**
 * @id SEM_15_02_297_FAIL_func_optional_required_mismatch1
 * @expect compile-fail
 * @section 15.2.6
 * @design 第1个参数在类型中可选但 lambda 中必选，编译错误
 * @note 来自规范 15.2.6 例：foo = (p: number): void => {} 编译错误
 */
function main(): void {
    let foo: (x?: number, y?: string) => void = () : void => {}
    foo = (p: number): void => {}
}

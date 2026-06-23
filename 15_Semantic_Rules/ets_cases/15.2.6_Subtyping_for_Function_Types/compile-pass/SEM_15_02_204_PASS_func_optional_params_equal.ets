/**
 * @id SEM_15_02_204_PASS_func_optional_params_equal
 * @expect compile-pass
 * @section 15.2.6
 * @design 相同可选参数类型合法
 * @note 来自规范 15.2.6 例：foo = (p1?:number, p2?:string): void => {} OK
 */
function main(): void {
    let foo: (x?: number, y?: string) => void = (p1?: number, p2?: string): void => {}
}

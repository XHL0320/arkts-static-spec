/**
 * @id SEM_15_02_06_005_PASS_func_optional_params_less
 * @expect compile-pass
 * @section 15.2.6
 * @design m <= n 且可选参数可省略：(x?:number,y?:string)=>void 可接收 ()=>void 和 (p?:number)=>void
 * @note 来自规范 15.2.6 例：foo = (p?: number): void => {} OK
 */
function main(): void {
    let foo: (x?: number, y?: string) => void = () : void => {}
    foo = (p?: number): void => {}
}

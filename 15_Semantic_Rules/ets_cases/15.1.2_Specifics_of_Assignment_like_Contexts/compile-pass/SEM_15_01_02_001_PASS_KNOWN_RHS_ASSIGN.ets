/**
 * @id SEM_15_01_02_001_PASS_KNOWN_RHS_ASSIGN
 * @expect compile-pass
 * @section 15.1.2
 * @design 验证赋值上下文中 RHS 类型已知时的可赋值性检查
 * @note 正向用例：int→int, double→double, string→string 应检查通过
 */
function main(): void {
    let x: int = 10;
    let y: double = 3.14;
    let z: string = "hello";
    console.log(`x=${x}, y=${y}, z=${z}`);
}

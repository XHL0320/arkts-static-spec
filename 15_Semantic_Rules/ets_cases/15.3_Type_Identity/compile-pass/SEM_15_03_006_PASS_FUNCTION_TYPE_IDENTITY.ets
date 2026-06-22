/**
 * @id SEM_15_03_006
 * @expect compile-pass
 * @section 15.3
 * @design 验证函数类型同一性：相同签名函数类型视为同一类型
 * @note 正向用例：(int) => string 和自身是同一类型
 */
type FnType = (x: int) => string;
function apply(fn: FnType, val: int): string {
    return fn(val);
}
function main(): void {
    let f: FnType = (x: int): string => x.toString();
    let result: string = apply(f, 42);
    console.log(`result=${result}`);
}

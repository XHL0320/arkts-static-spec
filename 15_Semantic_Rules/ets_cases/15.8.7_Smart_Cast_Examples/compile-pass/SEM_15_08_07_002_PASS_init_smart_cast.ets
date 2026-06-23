/**
 * @id SEM_15_08_07_002_PASS_init_smart_cast
 * @expect compile-pass
 * @section 15.8.7
 * @design 规范 15.8.7：初始化器缩窄number|string为number后自增
 * @note 正向用例：let a: number|string=42后a++安全
 */
function boo(): void {
    let a: number | string = 42;
    a++;
}
function main(): void {
    boo();
}

/**
 * @id SEM_15_05_011
 * @expect compile-fail
 * @section 15.5
 * @design 验证逆变位置禁止返回值：in 类型参数不可用于返回值位置
 * @note 反向用例：逆变类型参数用于 out-position 应编译拒绝
 */
interface Consumer<in T> { consume(t: T): void; get(): T; }
function main(): void {
    let c: Consumer<Animal> = new Consumer<Animal>();
}

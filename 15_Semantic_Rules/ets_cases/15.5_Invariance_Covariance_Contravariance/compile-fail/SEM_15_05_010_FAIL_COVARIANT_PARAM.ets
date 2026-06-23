/**
 * @id SEM_15_05_010_FAIL_COVARIANT_PARAM
 * @expect compile-fail
 * @section 15.5
 * @design 验证协变位置禁止参数：out 类型参数不可用于参数位置
 * @note 反向用例：协变类型参数用于 in-position 应编译拒绝
 */
interface Producer<out T> { produce(): T; produceWith(t: T): void; }
function main(): void {
    let p: Producer<Animal> = new Producer<Animal>();
}

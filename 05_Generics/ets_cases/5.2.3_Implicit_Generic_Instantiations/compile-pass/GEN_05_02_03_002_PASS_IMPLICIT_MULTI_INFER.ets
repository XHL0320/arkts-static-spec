/**
 * @id GEN_05_03_012_PASS_IMPLICIT_MULTI_INFER
 * @expect compile-pass
 * @section 5.3
 * @design 隐式实例化-多参数推断
 * @note 正向用例：验证多类型参数隐式推断
 */
function process<P, R>(arg: P, cb?: (p: P) => R): P | R {
    return cb != undefined ? cb(arg) : arg;
}
let r: string | number = process("hello", (s: string): number => s.length);

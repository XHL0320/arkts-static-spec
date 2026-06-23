/**
 * @id ITF_10_03_003_PASS_OBJECT_METHOD_CLASH
 * @expect compile-pass
 * @section 10.3
 * @design 与Object方法冲突【已知gap：编译器未实现§10.3规则】
 * @note Spec规定同名Object public方法应编译错误，但当前编译器接受。
 */
interface BadToString {
    toString(p: number): void;
}

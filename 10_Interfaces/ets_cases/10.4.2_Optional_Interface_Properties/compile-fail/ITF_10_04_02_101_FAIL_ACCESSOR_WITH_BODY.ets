/**
 * @id ITF_10_04_02_101_FAIL_ACCESSOR_WITH_BODY
 * @expect compile-fail
 * @section 10.4.2
 * @design 接口访问器不能有函数体
 * @note spec: ArkTS does not support explicitly defined accessors with bodies
 */
interface I101 {
    get val(): int { return 1 }
}

/**
 * @id EXP_07_10_01_003_PASS_READONLY_STATIC_ACCESS
 * @expect compile-pass
 * @section 7.10.1
 * @design readonly 静态字段访问：通过 ClassName.READONLY_FIELD 读取只读静态字段（value 语义）
 * @note 正向用例：验证 readonly 静态字段访问返回 value，不可作为左值
 */
class Constants {
    static readonly MAX_SIZE: int = 1024
    static readonly MIN_SIZE: int = 64
    static readonly DEFAULT_NAME: string = "default"
}
let max: int = Constants.MAX_SIZE
let min: int = Constants.MIN_SIZE
let name: string = Constants.DEFAULT_NAME

/**
 * @id EXP_07_06_01_003_PASS_SKIP_FIELDS_DEFAULTS
 * @expect compile-pass
 * @section 7.6.1
 * @design 跳过所有有默认值或显式初始化的字段：let f: Friend = {} 所有字段都有默认值或显式初始化
 * @note 正向用例：验证字段有默认值或初始化时可以全部跳过
 */
class Friend {
    name: string = ""
    age: number = 0
    sex: string = "unknown"
}
let f: Friend = {}

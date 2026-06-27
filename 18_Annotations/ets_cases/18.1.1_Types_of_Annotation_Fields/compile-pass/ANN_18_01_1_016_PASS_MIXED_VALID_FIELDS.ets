/**
 * @id ANN_18_01_1_016_PASS_MIXED_VALID_FIELDS
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证多种合法字段类型组合使用可通过编译
 * @note 正向用例：多种合法类型混合
 */
enum Level {
  LOW,
  HIGH
}

@interface Config {
  name: string
  version: int
  active: boolean
  level: Level
  aliases: string[]
}

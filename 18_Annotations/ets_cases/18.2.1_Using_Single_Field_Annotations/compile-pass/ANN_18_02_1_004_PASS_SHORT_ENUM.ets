/**
 * @id ANN_18_02_1_004_PASS_SHORT_ENUM
 * @expect compile-pass
 * @section 18.2.1
 * @design 验证单字段注解简写形式（enum 值）
 * @note 正向用例：@priority(Level.HIGH) 简写
 */
enum Level {
  LOW,
  HIGH
}

@interface priority {
  level: Level
}

@priority(Level.HIGH)
class C {}

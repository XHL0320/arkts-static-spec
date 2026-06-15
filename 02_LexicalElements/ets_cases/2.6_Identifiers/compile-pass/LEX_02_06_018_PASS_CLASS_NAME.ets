/**
 * @id LEX_02_06_018_PASS_CLASS_NAME
 * @expect compile-pass
 * @section 2.6
 * @design 标识符作为类名
 * @note 正向用例：Unicode 字符作类名
 */
class 学生018 {
  名字: string = ""
}

class _Internal018 {
  field: int = 0
}

class $Cache018 {
  data: int = 0
}

function testClassName(): void {
  let s: 学生018 = new 学生018()
  s.名字 = "Alice"
}

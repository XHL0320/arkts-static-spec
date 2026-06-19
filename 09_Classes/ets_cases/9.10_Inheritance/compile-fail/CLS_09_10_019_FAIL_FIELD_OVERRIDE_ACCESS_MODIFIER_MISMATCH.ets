/**
 * @id CLS_09_10_019_FAIL_FIELD_OVERRIDE_ACCESS_MODIFIER_MISMATCH
 * @expect compile-fail
 * @section 9.10
 * @design 重写字段的访问修饰符必须与基类被重写字段的访问修饰符相同，否则编译失败
 * @note 反向用例：基类public字段被派生类以protected声明重写，访问修饰符不匹配
 */
class Box {
  public width: int = 10
  protected height: int = 20
  public label: string = "box"
}

class SafeBox extends Box {
  protected width: int = 30   // Compile-time error: 'protected' != 'public'
  public height: int = 50     // Compile-time error: 'public' != 'protected'
  private label: string = "safe" // Compile-time error: 'private' != 'public'
}

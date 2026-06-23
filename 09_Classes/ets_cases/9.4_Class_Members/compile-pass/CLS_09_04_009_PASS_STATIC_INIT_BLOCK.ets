/**
 * @id CLS_09_04_009_PASS_STATIC_INIT_BLOCK
 * @expect compile-pass
 * @section 9.4
 * @design 静态初始化块（static block）基本用法编译通过
 * @note 正向用例：spec §9.4明确提及静态初始化块，
 *       验证static { ... }语法在类声明中合法
 *       Spec依据：spec §9.4 class body可包含static initialization block
 */
class StaticBlock009 {
  static x: number = 0
  static {
    StaticBlock009.x = 42
  }
}

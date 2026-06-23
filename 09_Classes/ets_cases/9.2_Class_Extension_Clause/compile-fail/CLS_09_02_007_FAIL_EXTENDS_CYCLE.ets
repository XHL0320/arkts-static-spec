/**
 * @id CLS_09_02_007_FAIL_EXTENDS_CYCLE
 * @expect compile-fail
 * @section 9.2
 * @design 类继承形成循环依赖应编译失败
 * @note 反向用例：spec规定extends不能形成循环
 */
class CycA extends CycB {
}
class CycB extends CycA {
}

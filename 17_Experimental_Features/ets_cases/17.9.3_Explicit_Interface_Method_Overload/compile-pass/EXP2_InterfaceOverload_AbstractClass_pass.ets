/**
 * @id EXP2_InterfaceOverload_AbstractClass_pass
 * @expect compile-pass
 * @section 17.9.3
 * @design 抽象类实现接口但声明为 abstract，不实现方法
 * @note 正向用例：抽象类可以声明 abstract 方法匹配接口 overload
 */
interface IWorker {
  workInt(a: int): string
  workStr(a: string): string
  overload work { workInt, workStr }
}

abstract class AbstractWorker implements IWorker {
  // 抽象方法，留给子类实现
  abstract workInt(a: int): string
  abstract workStr(a: string): string
}

class ConcreteWorker extends AbstractWorker {
  workInt(a: int): string { return "int:" + a }
  workStr(a: string): string { return "str:" + a }
  overload work { workInt, workStr }
}

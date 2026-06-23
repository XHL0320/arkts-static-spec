/*
 * @id SEM_15_02_00_015_PASS_UNION_member_to_union
 * @expect compile-pass
 * @section 15.2.5
 * @design 规范 15.2.5：联合类型 U(U1|...|Un) 是类型 T 的子类型，如果每个 Ui 都是 T 的子类型
 * @note 测试联合类型的子类型关系：每个成员都是目标类型的子类型
 */

// 测试联合类型的子类型关系
class Base {
  name: string = "base"
}

class Derived1 extends Base {
  value1: number = 1
}

class Derived2 extends Base {
  value2: string = "two"
}

function test_union_subtype(): void {
  let unionVar: Derived1 | Derived2
  let baseVar: Base
  
  // Derived1 | Derived2 是 Base 的子类型（因为每个成员都是 Base 的子类型）
  unionVar = new Derived1()
  baseVar = unionVar  // OK: Derived1|Derived2 <: Base
  
  console.log(baseVar.name)
  
  // 测试规范中的示例
  let x: Base
  let y: Derived1 | Derived2
  
  x = y  // OK: both Derived1 and Derived2 are subtypes of Base
}

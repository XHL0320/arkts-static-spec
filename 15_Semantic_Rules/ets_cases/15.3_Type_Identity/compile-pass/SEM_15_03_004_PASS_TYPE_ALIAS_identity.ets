/*
 * @id SEM_15_03_004_PASS_TYPE_ALIAS_identity
 * @expect compile-pass
 * @section 15.3
 * @design 规范 15.3：类型别名不创建新类型，只是现有类型的别名
 * @note 测试类型别名身份
 */

// 测试类型别名身份
type MyNumber = number
type MyString = string

function test_type_alias_identity(): void {
  let n1: number = 42
  let n2: MyNumber = 100
  
  // number 和 MyNumber 是相同类型
  n1 = n2  // OK: 相同类型
  n2 = n1  // OK: 相同类型
    
  let s1: string = "hello"
  let s2: MyString = "world"
    
  // string 和 MyString 是相同类型
  s1 = s2  // OK: 相同类型
  s2 = s1  // OK: 相同类型
    
  console.log("Type alias identity test passed")
}

// 测试泛型类型别名
type MyArray<T> = Array<T>

function test_generic_type_alias(): void {
  let a1: Array<number> = [1, 2, 3]
  let a2: MyArray<number> = [4, 5, 6]
    
  // Array<number> 和 MyArray<number> 是相同类型
  a1 = a2  // OK: 相同类型
  a2 = a1  // OK: 相同类型
    
  console.log("Generic type alias test passed")
}

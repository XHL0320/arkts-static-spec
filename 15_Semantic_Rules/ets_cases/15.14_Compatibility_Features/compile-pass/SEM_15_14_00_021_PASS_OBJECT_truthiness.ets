/*
 * @id SEM_15_14_00_021_PASS_OBJECT_truthiness
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：object 类型的真值检查
 * @note 测试 object 类型的真值检查
 */

// 测试 object 类型的真值检查
function test_object_truthiness(): void {
  // object 类型的真值检查
  let obj1: Object = new Object()
  if (obj1) {
    console.log("Object is truthy")  // 输出: Object is truthy
  }
  
  let obj2: Object = {}
  if (obj2) {
    console.log("Empty object is truthy")  // 输出: Empty object is truthy
  }
    
  console.log("Object truthiness test passed")
}
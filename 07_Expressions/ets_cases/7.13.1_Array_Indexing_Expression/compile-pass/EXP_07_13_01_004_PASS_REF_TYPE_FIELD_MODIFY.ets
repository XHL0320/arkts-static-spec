/**
 * @id EXP_07_13_01_004_PASS_REF_TYPE_FIELD_MODIFY
 * @expect compile-pass
 * @section 7.13.1
 * @design 验证引用类型数组元素的字段可通过结果变量修改
 * @note 正向用例：RefType 数组通过索引取值后修改字段，编译通过
 */
class RefType {
  field: int = 42;
}

function main(): void {
  let objects: RefType[] = [new RefType(), new RefType()];
  let obj: RefType = objects[1];
  obj.field = 777;
}

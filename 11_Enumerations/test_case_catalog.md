# 11 Enumerations Test Case Catalog

**总用例数：** 42（19P + 14F + 9R）

| Section | compile-pass | compile-fail | runtime | Total |
|---|---:|---:|---:|---:|
| 11_Enumerations | 5 | 2 | 0 | 7 |
| 11.1 Enumeration Base Type | 5 | 3 | 0 | 8 |
| 11.2 Enumeration with Explicit Base Type | 3 | 4 | 1 | 8 |
| 11.3 Initialization of Enumeration Members | 4 | 3 | 1 | 8 |
| 11.4 Enumeration Methods | 2 | 2 | 7 | 11 |
| **Total** | **19** | **14** | **9** | **42** |

## 11.4 Enumeration Methods 新增覆盖

| ID | Type | Purpose |
|---|---|---|
| ENM_11_04_008_PASS_ENUM_STATIC_METHOD_TYPES | compile-pass | values/getValueOf/fromValue 返回类型检查 |
| ENM_11_04_009_PASS_ENUM_INSTANCE_METHOD_TYPES | compile-pass | toString/valueOf/getName 返回类型检查 |
| ENM_11_04_010_FAIL_GETVALUEOF_WRONG_ARG_TYPE | compile-fail | getValueOf 非 string 参数失败 |
| ENM_11_04_011_FAIL_FROMVALUE_WRONG_BASE_TYPE | compile-fail | fromValue 参数类型与基类型不匹配失败 |

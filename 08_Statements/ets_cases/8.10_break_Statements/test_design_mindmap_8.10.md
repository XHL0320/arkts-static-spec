# 8.10 break 语句 测试设计思维导图

## 1. 规格定义
- 语法: breakStatement: 'break' identifier?
- 不带标签: 跳出最内层 while / do / for / for-of / switch
- 带标签: 跳出包含该标签的封闭语句
- 编译时错误:
  - break 出现在 loopStatement 或 switchStatement 外部
  - break 标签不匹配任何封闭语句的标签

## 2. 测试策略总览
### 2.1 编译通过 (compile-pass)
- 基本场景: 各种循环结构中使用 break
- 标签场景: 带标签的 break 跳出外层循环
- switch 场景: break 防止 fallthrough

### 2.2 编译失败 (compile-fail)
- break 出现在循环/switch 外部 (if 块, 函数体中)
- break 标签不存在于任何封闭语句
- break 标签指向非循环/switch 标签

### 2.3 运行时 (runtime)
- 验证 break 跳出 while 循环
- 验证带标签的 break 跳出外层循环 (跳过内层剩余迭代)
- 验证 break 在 switch 中防止 fallthrough

## 3. 详细测试点
### 3.1 无标签 break (pass)
- while 循环中的 break
- for 循环中的 break
- for-of 循环中的 break
- do-while 循环中的 break
- switch 语句中的 break

### 3.2 带标签 break (pass)
- 嵌套循环中使用 break 跳转到外层标签
- 标签位于外层 while/do/for/for-of/switch

### 3.3 边界 / 异常 (fail)
- if 块中直接使用 break (无外围循环/switch)
- 函数体顶层使用 break
- break 标签名称不存在
- break 标签指向非循环/switch 语句 (如 if, block)

### 3.4 运行时行为验证 (runtime)
- break 跳出后循环变量/计数器的值
- 带标签 break 跳过内层剩余迭代
- switch 每个 case 后 break 防止 fallthrough

## 4. 文件命名规范
- 模板: STM_08_10_<NNN>_<TYPE>_<DESC>.ets
- TYPE 取值: PASS, FAIL, RUNTIME
- NNN: 三位数字序号, 全局连续
- 注释块格式:
  /**
   * @id STM_08_10_NNN_TYPE_DESC
   * @expect compile-pass|compile-fail|runtime
   * @section 8.10
   * @design <中文描述>
   * @note <英文说明>
   */

## 5. 文件清单
| # | 文件名 | 类型 | 描述 |
|---|--------|------|------|
| 001 | STM_08_10_001_PASS_break_basic_while.ets | pass | while循环中使用break |
| 002 | STM_08_10_002_PASS_break_labelled.ets | pass | 嵌套循环中带标签break |
| 003 | STM_08_10_003_PASS_break_for_loop.ets | pass | for循环中使用break |
| 004 | STM_08_10_004_PASS_break_for_of.ets | pass | for-of循环中使用break |
| 005 | STM_08_10_005_PASS_break_switch.ets | pass | switch语句中使用break |
| 006 | STM_08_10_006_FAIL_break_outside_loop.ets | fail | break在循环/switch外部 |
| 007 | STM_08_10_007_FAIL_break_label_not_found.ets | fail | break标签不存在 |
| 008 | STM_08_10_008_FAIL_break_label_non_loop.ets | fail | break标签指向非循环语句 |
| 009 | STM_08_10_009_RUNTIME_break_while_control.ets | runtime | break跳出while验证 |
| 010 | STM_08_10_010_RUNTIME_break_labelled_outer.ets | runtime | 标签break跳出外层循环 |
| 011 | STM_08_10_011_RUNTIME_break_switch_control.ets | runtime | switch中break防止fallthrough |

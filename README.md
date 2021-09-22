
字体自适应兼容xib和自定义字体


1：修改xib中Label的字号：UILabel+Adapter.h同样的可以处理UITextField等
2：修改手写的Font 可以使用UIFont+Adapter.h   交换对应的方法实现  比如systemFontOfSize:


更改IB的字号时 尽量使用UIFontDescriptor  可以不改变字体


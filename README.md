# ruby_review

[![](https://img.shields.io/badge/Ruby-2.6.3p62-red.svg)](https://www.ruby-lang.org/en/) 

Ruby language review (just the language no Rails).

## Key concepts

Methods-entities:

1. **Closures** include **procs** (functions), **methods**, **blocks**, and **lambdas**
1. **Procs** can be expressed using **lambdas** (and for nearly all purposes are mostly equivalent)
1. **Methods** implicitly return last line in block

Collection-entities:

1. **Hashes** are the operative key-value pair data structure
1. **Arrays** and **ranges** constitute the other **enumerables**/**iterables**

Type-entities:

1. **Modules** can be `included` in other **modules** and **classes** - cannot be instantiated
1. **Classes** can be instantiated - obey OOD principles (hierarchy)

Control-flow:

1. Dominated by **guards**
1. `catch` keyword is replaced by `rescue` keyword

Access and Visibility:

1. `attr_accessor` and `@` provide varying levels of access on **classes** and **modules**
1. `attr_accessor` makes fields available publically
1. `@` makes fields available privately or through a getter/setter
1. `@` and `self` can be used interchangeably in some context
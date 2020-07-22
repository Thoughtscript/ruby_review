# Ruby's Key-Value data structure

# Declaration 1
example1 = {"a" => 1, "b" => 2}
p example1
p example1["a"]
## 1
p example1[0]
## nil

# Declaration 2
example2 = {2=> 1, 1 => 2}
p example2
p example2[2]
## 1

# Declaration 3
example3 = Hash["a", 1, "b", 2]
p example3
p example3["b"]
example3["c"] = 3
p example3["c"]

# Decomposition
p a: 1, b: 2, c: 3, d: 4
## {:a=>1, :b=>2, :c=>3, :d=>4}

# Accessing
v = example3.values
p v[0]
# 1
p v[1]
# 2
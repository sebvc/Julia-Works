# Starting string processing example for Learning Julia


# TODO: simple string operations - length, size
# mystr = "Ångström"
# teststr = "jμΛIα" # test string with some Greek characters
# println("String length: ", length(mystr))
# println("size of string: ", sizeof(mystr))
#  # size of string in bytes is different because some greek characters take up more that one byte
# println("String length: ", length(teststr))
# println("size of string: ", sizeof(teststr))

# TODO: concatenation and repetition operators
# teststr = "Hello " * "World"
# println(teststr)
# teststr = "ABCD"^3
# println(teststr)

# TODO: search for substrings
# teststr = "Julia programming is awesome"

# println(findnext("Julia", teststr,1))
# println(occursin("some", teststr))

# TODO: pad strings either left or right
# teststr = lpad("Test String", 20)
# println(teststr)
# teststr = rpad("Test String", 20, '*')
# println(teststr)

# TODO: create a string from an array
arr = ["Lions","Tigers","Bears", "Panthers"]
teststr = join(arr, ", ", " and ")
println(teststr)

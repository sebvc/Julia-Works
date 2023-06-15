# Starting file system example for Learning Julia

# TODO get the current workding dir
# print("Current working directory: ")
# println(pwd())

# TODO read the contents of the current directory
# print("Current directory contents: ")
# println(readdir())

# TODO open a file for writing
function createafile(filename::String, text::String = "This is some text")
    io = open(filename, "w")
    write(io, text)
    close(io)   
end
# createafile("mytestfile.txt", "Hello world!")

# TODO open a file for reading
function readafile(filename::String)
    io = open(filename, "r")
    content = read(io, String)
    println(content)
    close(io)   
end

# readafile("mytestfile.txt")


# TODO append data to an existing file
function appendafile(filename::String, text::String)
    io = open(filename, "a")
    write(io, text)
    close(io)   
end

# appendafile("mytestfile.txt", "this text was added") # π")
# readafile("mytestfile.txt")

# TODO rename an existing file
function renamefile()
    mv("mytestfile.txt","newfilename.txt")    
end
# renamefile()

# TODO delete a file
# rm("newfilename.txt")

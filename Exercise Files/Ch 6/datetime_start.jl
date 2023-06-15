# Starting point date and time example for Learning Julia

# import the Dates module to use the code it contains
using Dates

# TODO create new Date and DateTime
d1 = Date(2018, 12, 22)
dt1 = DateTime(2019, 7, 28)
# println("Date and DateTime:")
# println(d1, '\n', dt1)

# TODO parse a date or date/time string using DateFormat
# df1 = DateFormat("y-d-m")
# d2 = Date("2020-22-10", df1) # notice output is to default format of y-m-d rather than y-d-m
# println(d2)

# TODO differences between Dates and Times
d3 = Date(2019, 12, 22)
d4 = Date(2019, 7, 28)
println(d3)
dt3 = DateTime(2000, 01, 01)
dt4 = DateTime(2000, 12, 31)
# println(d4 < d3)

# println(d3 - d4)
# println(d4 - d3)

# TODO access the values of a date or time
println(Dates.year(d3))
println(Dates.week(d4))

# TODO query functions
println(Dates.dayofweek(d3))
println(Dates.dayname(d3))
println(Dates.isleapyear(d3))


# TODO adjuster functions
println(Dates.firstdayofweek(d3))
println(Dates.lastdayofweek(d3))
println(Dates.lastdayofmonth(d3))

outer = func {
    var x = 5;

    return func {
        return x;  # 'x' is captured from the outer scope
    };
};

closureFunc = outer();  # 'outer' function returns an inner function
print(closureFunc());  # Prints 5, even though 'outer' has finished

globalVar = 10;

outer = func {
    var outerVar = 20;

    inner = func {
        var innerVar = 30;
        print(globalVar);  # Accesses globalVar from global scope
        print(outerVar);   # Accesses outerVar from outer function scope
        print(innerVar);   # Accesses innerVar from local scope
    };

    inner();  # Executes inner function within the same outer function call
};

outer();

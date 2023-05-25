from src import fibonacci

def test_should_return_fib():
    # GIVEN
    expected = 55

    # WHEN
    actual = fibonacci.fibonacci(10)

    # THEN
    assert actual == expected
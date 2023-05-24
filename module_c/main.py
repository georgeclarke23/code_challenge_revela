import random

from src.two_sum import two_sum


def main():
    print(two_sum([random.randint(1, 20) for _ in range(20)], 10))


if __name__ == '__main__':
    main()


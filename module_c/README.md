# Two Sum Calculator

This Python application calculates the indices of two numbers in a list that add up to a specific target.

## Setup

Make sure you have Python 3.10 installed on your system.

1. Set up a virtual environment and install the project dependencies:

   ```bash
   make setup
   ```

## Usage

To calculate the indices of two numbers that add up to a target, run the following command:

```bash
make run
```

This command executes the Python script and prompts you to enter the list of numbers and the target value. It then displays the indices of the two numbers that satisfy the condition.

If you prefer to run the application in a Docker container, use the following command:

```bash
make docker/up
```

## Cleanup

To remove auxiliary files, use the following command:

```bash
make clean
```

Additionally, if you're running the application in a Docker container and want to stop it, use the following command:

```bash 
make docker/down
```

## License

This project is licensed under the [MIT License](LICENSE).

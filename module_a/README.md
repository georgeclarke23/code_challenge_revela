# Fibonacci Calculator

This Python application calculates the 10th Fibonacci number.

## Setup

Make sure you have Python 3.10 installed on your system.

Set up a virtual environment and install the project dependencies:

   ```bash
   make setup
   ```

## Usage

To calculate the 10th Fibonacci number, run the following command:

```bash
make run
```

This command executes the Python script and displays the result.

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

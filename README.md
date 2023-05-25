## Project Details

This project comprises of two main tasks: a GitHub repository setup and a Terraform configuration. 

### Task 1: GitHub Repository Setup 

The goal of Task 1 was to create a GitHub repository with three Python packages (Module A, Module B, and Module C), each with its own environment/Docker Files and test folders. 

Here's how the repository is structured:

- **Root**: The root of the repository contains the `.github` directory and the three module directories (`module_a`, `module_b`, `module_c`).
    - **.github/workflows**: This folder holds the GitHub Actions workflows for automating Docker installation, code testing (with pytest), and linting when changes are made to the main branch. The workflow is configured to process only the module that has a code change, optimizing the automation process.
    - **module_a**, **module_b**, **module_c**: These folders each represent a separate Python package, containing the package source code, respective environment specifications or Dockerfiles, and test folders.

### Task 2: Terraform Configuration

Task 2 involves creating a Terraform configuration file that provisions a computing environment with instances suitable for code development, machine learning training, and large-scale data processing jobs. 

The configuration, written to work with AWS or GCP providers, details the setup for:

- A small instance for code development
- A medium-sized instance equipped with GPUs for machine learning training
- A large instance for handling large-scale data processing jobs

The Terraform files for this task can be found under the `infrastructure` folder in the repository.

Note: This project serves as a proof of concept and may include simple functions such as addition or Fibonacci sequences in each module for testing purposes.

### Task 3: Key Communication Processes and Tools in Project Management

Building and maintaining a solid communication flow is fundamental to successful project management. Here's a quick overview of the key processes and tools we could use to ensure we stay on top of things:

1. **Daily Standups**: It's important to keep everyone in the loop. Daily meetings let us share progress updates, discuss any potential issues, and strategize our next steps. 

2. **Git**: Keeping track of our code changes is essential, and that's where Git comes in. As our version control system, Git allows us to monitor modifications and, if needed, revert to previous versions of our code.

3. **Jira**: Managing workloads efficiently is crucial. With Jira, we can organize tasks, assign them to the appropriate team members, and monitor progress. It's an excellent tool for ensuring that everything stays on track.

4. **Github Issues or Jira**: Bugs are an inevitable part of any project. However, with tools like Github Issues or Jira, we can effectively track, assign, and resolve these bugs, ensuring our code remains clean and functional.

5. **Slack or Teams**: For day-to-day communication among developers, Slack or Microsoft Teams are great options. I personally lean towards Slack. These tools support instant, informal communication, and they can even be integrated with GitHub to provide real-time updates on our code.

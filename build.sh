#!/bin/bash

# Build your application (if applicable)
# For a simple calculator program, you may not have a build step.

# Activate a virtual environment (if applicable)
# Replace 'venv' with the name of your virtual environment if you're using one.
source venv/bin/activate
pip install pytest

# Run your tests using pytest (replace 'test_calculator.py' with your test file)
pytest test_calculator.py

# If you don't have tests, you can run your calculator program (replace 'calculator.py' with your program)
python calculator.py

# Deactivate the virtual environment (if applicable)
deactivate

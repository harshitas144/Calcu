#!/bin/bash

#Activate a virtual environment (if applicable)
# Replace 'venv' with the name of your virtual environment if you're using one.
source venv/bin/activate

# Check if the virtual environment activation was successful
if [ "$VIRTUAL_ENV" != "" ]; then
    echo "Virtual environment activated."
else
    echo "Failed to activate the virtual environment."
    exit 1
fi

# Install pytest in the virtual environment
pip install pytest

# Check if pytest installation was successful
if pytest --version; then
    echo "pytest is installed."
else
    echo "Failed to install pytest."
    deactivate
    exit 1
fi

# Run your tests using pytest (replace 'test_calculator.py' with your test file)
pytest caltest_py.py

# Check if pytest tests ran successfully
if [ $? -eq 0 ]; then
    echo "Tests passed successfully."
else
    echo "Tests failed."
    deactivate
    exit 1
fi

# If you don't have tests, you can run your calculator program (replace 'calculator.py' with your program)
python calculator.py

# Deactivate the virtual environment (if applicable)
deactivate

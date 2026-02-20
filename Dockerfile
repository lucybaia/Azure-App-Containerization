# Step 1: Use an official Python lightweight image
FROM python:3.14-slim

# Step 2: Set the directory where the app will live inside the container
WORKDIR /app

# Step 3: Copy the requirements first (better for caching layers)
COPY app/requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of your application code
COPY app/ .

# Step 6: Expose the port the app runs on
EXPOSE 8000

# Step 7: Command to run the application
CMD ["python", "main.py"]
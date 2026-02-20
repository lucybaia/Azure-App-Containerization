from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello Marcela! Your API is running inside a Container!", "status": "Ready for Azure"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}

if __name__ == "__main__":
    import uvicorn
    # This allows the app to run when called directly
    uvicorn.run(app, host="0.0.0.0", port=8000)
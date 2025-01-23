# Flask Project

This is a simple Flask project that serves a single-page application with a scrolling text animation and images.

## Project Structure

## Requirements

- Python 3.9
- Flask 2.1.0
- Werkzeug 2.0.3

## Installation

1. Clone the repository:
    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. Create a virtual environment and activate it:
    ```sh
    python3 -m venv venv
    source venv/bin/activate
    ```

3. Install the dependencies:
    ```sh
    pip install -r requirements.txt
    ```

## Running the Application

1. Start the Flask application:
    ```sh
    python run.py
    ```

2. Open your web browser and navigate to `http://localhost:5000`.

## Running Tests

1. Run the unit-tests:
    ```sh
    python -m unittest discover tests
    ```

## Docker

1. Build the Docker image:
    ```sh
    docker build -t flask-project .
    ```

2. Run the Docker container:
    ```sh
    docker run -p 5000:5000 flask-project
    ```

## Kubernetes

1. Apply the Kubernetes configuration:
    ```sh
    kubectl apply -f Application.yaml
    ```

## Project Files

- [run.py](http://_vscodecontentref_/10): Entry point for running the Flask application.
- [__init__.py](http://_vscodecontentref_/11): Initializes the Flask application.
- [routes.py](http://_vscodecontentref_/12): Defines the routes for the Flask application.
- [style.css](http://_vscodecontentref_/13): Contains the CSS styles for the application.
- [main.js](http://_vscodecontentref_/14): Contains the JavaScript code for the application.
- [index.html](http://_vscodecontentref_/15): Contains the HTML template for the application.
- [requirements.txt](http://_vscodecontentref_/16): Lists the Python dependencies.
- [Dockerfile](http://_vscodecontentref_/17): Defines the Docker image for the application.
- [Application.yaml](http://_vscodecontentref_/18): Defines the Kubernetes deployment and service.
- [test_routes.py](http://_vscodecontentref_/19): Contains unit tests for the Flask routes.

## License

This project is licensed under the MIT License.

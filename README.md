# avato-tflite-dynamic-demo

## Installation 

### Prerequisites

You need to have Python >=3.7 installed (check using `python --version`) and internet access.

### Installation

Clone the repo, then execute the following steps in the `avato-tflite-dynamic-demo` folder.

1. Create a new Python environment to install into using
   `python -m venv .env`
2. Activate the environment using
   `source .env/bin/activate`
3. Install all dependencies using `.env/bin/pip install -r requirements.txt`

### Run Demo

Make sure you have the correct Python environment activated. If you just installed the module, it's already set. Otherwise you may have to run `source .env/bin/activate` again.

Set the trial user credentials via

```
export MODEL_OWNER_ID="model_owner@gmail.com"
export MODEL_OWNER_PASSWORD="password"
export INFERENCE_USER_ID="inference_user@gmail.com"
export INFERENCE_USER_PASSWORD="password"
```

To run the demo, start a Jupyter notebook server with `.env/bin/jupyter notebook` which should open a browser window. In the browser window, open the `tflite_demo_model_owner.ipynb` notebook to train and confidentially deploy a model to Azure. Then open the `tflite_demo_inference_user.ipynb` notebook to perform confidential inference on the model.


## Installation with Docker

Alternatively, you can also install with Docker.

Build the docker container:

```
docker build -t avato-tflite-dynamic-demo . 
```

Run the container:

```
docker run --env-file env.list -p 8888:8888 avato-tflite-dynamic-demo
```

Then open the link (with the correct access token) which is shown in the console.
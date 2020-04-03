# avato-tflite-dynamic-demo


## 🚴 Installation and Usage 

First, we need to set the login credentials for the two users: the model owner and the inference user.  
Here we recommend the creation of a simple text-file to define them in a declarative way. 
An example `env.list` could look like:
```
MODEL_OWNER_ID="model_owner@gmail.com"
MODEL_OWNER_PASSWORD="@password here"
INFERENCE_USER_ID="inference_user@gmail.com"
INFERENCE_USER_PASSWORD="@password here"
```

### Installation using virtualenv:

Make sure you have a recent python version running (>3.6) and create a new virtualenv.

First, let's install all dependencies:

```
pip install -r requirements.txt
```

To start the jupyter notebook run the following command:

```
dotenv --file env.list run jupyter notebook
```

### Installation using Docker:

Build the docker container:

```
docker build -t avato-tflite-dynamic-demo . 
```

Run the container:

```
docker run --env-file env.list -p 8888:8888 avato-tflite-dynamic-demo
```

Then open the link (with the correct access token) which is shown in the console.
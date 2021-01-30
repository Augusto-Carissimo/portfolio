
FROM amazon/aws-glue-libs:glue_libs_1.0.0_image_01

#setup glue vars
WORKDIR /home/jupyter/jupyter_default_dir/notebooks

COPY . /home/jupyter/jupyter_default_dir/notebooks/app
WORKDIR /home/jupyter/jupyter_default_dir/notebooks/app
RUN pip3 install -r requirements.txt


ENTRYPOINT ["/home/jupyter/jupyter_start.sh"]


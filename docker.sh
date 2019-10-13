sudo nvidia-docker run -u 0 --net=host \
 --privileged \
 -v $HOME/dml/summarization:/root/workspace/ \
 -v /data2/summ/:/data2/summ\
 -it -p 8899:8899 --name bert_train --rm -e LC_ALL=C.UTF-8 -e DISPLAY=$DISPLAY \
 horovod-tensor-1.12.0-py3 \
 /bin/bash

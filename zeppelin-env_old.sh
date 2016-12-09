
# Spark master url. eg. spark://master_addr:7077. Leave empty if you want to use local mode
export MASTER=yarn-client
export SPARK_YARN_JAR=/apps/zeppelin/zeppelin-spark-0.5.5-SNAPSHOT.jar


# Where log files are stored.  PWD by default.
export ZEPPELIN_LOG_DIR=/var/log/zeppelin

# The pid files are stored. /tmp by default.
export ZEPPELIN_PID_DIR=/var/run/zeppelin


export JAVA_HOME=/usr/lib/jvm/java

# Additional jvm options. for example, export ZEPPELIN_JAVA_OPTS="-Dspark.executor.memory=8g -Dspark.cores.max=16"
export ZEPPELIN_JAVA_OPTS="-Dhdp.version=None -Dspark.executor.memory=512m -Dspark.executor.instances=2 -Dspark.yarn.queue=default"


# Zeppelin jvm mem options Default -Xmx1024m -XX:MaxPermSize=512m
# export ZEPPELIN_MEM

# zeppelin interpreter process jvm mem options. Defualt = ZEPPELIN_MEM
# export ZEPPELIN_INTP_MEM

# zeppelin interpreter process jvm options. Default = ZEPPELIN_JAVA_OPTS
# export ZEPPELIN_INTP_JAVA_OPTS

# Where notebook saved
# export ZEPPELIN_NOTEBOOK_DIR

# Id of notebook to be displayed in homescreen. ex) 2A94M5J1Z
# export ZEPPELIN_NOTEBOOK_HOMESCREEN

# hide homescreen notebook from list when this value set to "true". default "false"
# export ZEPPELIN_NOTEBOOK_HOMESCREEN_HIDE

# Bucket where notebook saved
# export ZEPPELIN_NOTEBOOK_S3_BUCKET

# User in bucket where notebook saved. For example bucket/user/notebook/2A94M5J1Z/note.json
# export ZEPPELIN_NOTEBOOK_S3_USER

# A string representing this instance of zeppelin. $USER by default
# export ZEPPELIN_IDENT_STRING

# The scheduling priority for daemons. Defaults to 0.
# export ZEPPELIN_NICENESS


#### Spark interpreter configuration ####

## Use provided spark installation ##
## defining SPARK_HOME makes Zeppelin run spark interpreter process using spark-submit
##
# (required) When it is defined, load it instead of Zeppelin embedded Spark libraries
export SPARK_HOME=/usr/hdp/current/spark-client

# (optional) extra options to pass to spark submit. eg) "--driver-memory 512M --executor-memory 1G".
# export SPARK_SUBMIT_OPTIONS

## Use embedded spark binaries ##
## without SPARK_HOME defined, Zeppelin still able to run spark interpreter process using embedded spark binaries.
## however, it is not encouraged when you can define SPARK_HOME
##
# Options read in YARN client mode
# yarn-site.xml is located in configuration directory in HADOOP_CONF_DIR.
export HADOOP_CONF_DIR=/etc/hadoop/conf

# Pyspark (supported with Spark 1.2.1 and above)
# To configure pyspark, you need to set spark distribution's path to 'spark.home' property in Interpreter setting screen in Zeppelin GUI
# path to the python command. must be the same path on the driver(Zeppelin) and all workers.
export PYSPARK_PYTHON=/usr/local/bin/python2.7

#export PYTHONPATH="${SPARK_HOME}/python:${SPARK_HOME}/python/lib/py4j-0.8.2.1-src.zip"
export PYTHONPATH=${SPARK_HOME}/python:${SPARK_HOME}/python/build:$PYTHONPATH
export SPARK_YARN_USER_ENV="PYTHONPATH=${PYTHONPATH}"

## Spark interpreter options ##
##
# Use HiveContext instead of SQLContext if set true. true by default.
# export ZEPPELIN_SPARK_USEHIVECONTEXT

# Execute multiple SQL concurrently if set true. false by default.
# export ZEPPELIN_SPARK_CONCURRENTSQL

# Max number of SparkSQL result to display. 1000 by default.
# export ZEPPELIN_SPARK_MAXRESULT
export ZEPPELIN_NOTEBOOK_STORAGE="org.apache.zeppelin.notebook.repo.VFSNotebookRepo, org.apache.zeppelin.notebook.repo.zeppelinhub.ZeppelinHubRepo"
export ZEPPELINHUB_API_ADDRESS="https://www.zeppelinhub.com"
export ZEPPELINHUB_API_TOKEN="1c53d086-bbbe-4b0a-bc99-a20dce33a5ed"

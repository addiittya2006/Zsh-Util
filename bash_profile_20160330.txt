# unset PROMPT_COMMAND
export JAVA_HOME=$(/usr/libexec/java_home)

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"
# export PATH=$PATH:${JAVA_HOME}/bin

# CLASSPATH Modification
# Add the Servlet API Jar to the CLASSPATH to compile Servlets from Terminal
# export CLASSPATH=/usr/local/tomcat/lib/servlet-api.jar:$CLASSPATH
# Add MySQL Connector/J to the CLASSPATH
# export CLASSPATH=/Users/addiittya/Developer/Java/lib/mysql-connector-java-5.1.34-bin.jar:$CLASSPATH

# Add environment variable adb and fastboot for Android
# export SDK_ROOT=/Users/addiittya/Library/Android/sdk
# export STUDIO_JDK=${JAVA_HOME}
export ANDROID_HOME=/Users/addiittya/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# export PATH=$PATH:/Users/addiittya/Developer/Python/google_appengine_python
# export PYTHONPATH="$PYTHONPATH:/Users/addiittya/Developer/Python/google_appengine_python:/Users/addiittya/Developer/Python/google_appengine_python/lib/django-1.5"
# Add MysqlConfig to PATH
# export MYSQL_HOME=/Users/addiittya/Developer/Ruby/mysql
# export PATH=$PATH:$MYSQL_HOME/bin

# Add Postgres to PATH
# export PG_HOME=/Users/addiittya/Developer/Ruby/postgresql
# export PATH=$PATH:$PG_HOME/bin

# Add Gradle environment Variable for Android Studio
# export GRADLE_HOME=/Users/addiittya/Developer/Android/gradle
# export PATH=$PATH:$GRADLE_HOME/bin

# export ANT_HOME=$PATH:/Users/addiittya/Developer/Java/ant
# export PATH=$PATH:$ANT_HOME/bin

# Add Go Env Variable
# export GOPATH=/Users/addiittya/Documents/Develop/go

if [ -f ~/.aliases ]; then
	source ~/.aliases
fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export MOZBUILD_STATE_PATH=/Users/addiittya/Developer/mozilla-central
export MOZCONFIG=/Users/addiittya/Developer/mozilla-central/mozconfig

# Uncomment :: Django Development
# export VIRTUALENV_PYTHON=/usr/local/bin/python
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
# source virtualenvwrapper.sh
# export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages
# Python 3 Support
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# export PYTHONPATH=/usr/local/Cellar/python3/3.4.3_2/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages:$PYTHONPATH

# Uncomment Rust
# export PATH="$HOME/.cargo/bin:$PATH"

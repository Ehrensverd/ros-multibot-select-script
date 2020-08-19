# ros-multibot-script

This setup was made to automate ROS_MASTER_URI as well as TURTLEBOT3_MODEL variables for multiple turtlebots used by multiple users.

Both the shell and python script can be changed for whatever setup is needed.

## Turtlebot .bashrc setup. (SSH server)

When multiple users use the same robots for ROS the ROS_MASTER_URI has to be changed every time the Master changes.

### How to
```
cd
nano .bashrc
```

Add
```
export ROS_MASTER_URI=http://"${SSH_CLIENT%% *}":11311
```
Ensure you only have one ROS_MASTER_URI

This will set the MASTER URI to the IP of the SSH client. So when connecting via SSH you also set the MASTER_URI shell variable to your IP.


## Remote PC setup. (SSH client)

### shell 
```
python3 /usr/local/bin/turtler.py $1;
export TURTLEBOT3_MODEL=$(cat .current_turtle);
```

### python 

```
import sys
if sys.argv[1] in ['burger', 'waffle', 'waffle_pi']:
        with open('.current_turtle','w') as file:
                file.write(sys.argv[1])
else:
        print('error')
```


### How to

```
$ echo $TURTLEBOT3_MODEL 
waffle
$ turtle burger
$ echo $TURTLEBOT3_MODEL 
burger
$ turtle waffle_pi
$ echo $TURTLEBOT3_MODEL 
waffle_pi
$ turtle somthing random
error
$ echo $TURTLEBOT3_MODEL 
waffle_pi
```






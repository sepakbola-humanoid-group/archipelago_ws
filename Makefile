.PHONY : build clean install pull-all status

build:
	catkin build -j4

clean:
	catkin clean

update: pull-all
	rosdep install -irya

pull-all:
	git pull
	scripts/pull_all.sh

status:
	scripts/git_status.bash
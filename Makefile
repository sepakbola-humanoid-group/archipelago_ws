.PHONY : build clean install pull-all status

build:
	catkin build -j4

clean:
	catkin clean

install:
	vcs import --input .rosinstall --skip-existing --recursive src 
	$(MAKE) update

update:
	scripts/pull_all.sh

status:
	scripts/git_status.bash
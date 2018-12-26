function mkproj
	git clone https://github.com/setseed42/default-ds-proj.git $argv
	cd $argv
	rm -rf .git
end

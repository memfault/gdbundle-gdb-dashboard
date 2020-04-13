VERSION=0.11.4

init: 
	rm -rf /tmp/gdb-dashboard
	wget https://github.com/cyrus-and/gdb-dashboard/archive/v${VERSION}.tar.gz -O /tmp/gdb_dashboard.tar.gz
	tar xjf /tmp/gdb_dashboard.tar.gz -C /tmp/ && mv /tmp/gdb-dashboard* /tmp/gdb-dashboard
	mv /tmp/gdb-dashboard/.gdbinit gdbundle_gdb_dashboard/scripts/gdb-dashboard.gdb

clean: 
	rm -rf gdbundle_gdb_dashboard/scripts/gdb-dashboard.gdb
	rm -rf dist

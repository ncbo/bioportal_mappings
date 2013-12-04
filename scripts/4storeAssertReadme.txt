
# On localhost

KB="mappings"

# First disable the currently running deamons
sudo /etc/init.d/4store stop
# Remove all the data from any previous work on mappings
4s-backend-destroy $KB
# Check the current defaults in:
cat /etc/4store.conf
# Recreate the "mappings" KB
4s-backend-setup $KB
ls -l /var/lib/4store/
4s-backend-info $KB
# Run the backend server
4s-backend $KB

# -----------------------------------------------------------------
# FROM: /etc/init.d/4store
PORT="2020" #"9000"
DAEMON1=/usr/bin/4s-backend
DAEMON2=/usr/bin/4s-httpd
KBUSER=fourstore
sudo mkdir -p -m 0755 /var/lib/4store /var/log/4store
# Refresh ownership, avoiding "chown -R" hardlink attacks
sudo find /var/lib/4store /var/log/4store \( -type d -links 2 \) -or \( -type f -links 1 \) -execdir chown "$KBUSER": {} +
sudo start-stop-daemon --start --chuid $KBUSER --quiet --oknodo --name 4s-backend --startas $DAEMON1 -- $KB
#sudo start-stop-daemon --start --chuid $KBUSER --quiet --oknodo --name 4s-httpd --startas $DAEMON2 -- -p $PORT $KB

# Import the loom data to the KB
LOOM_GRAPH="http://purl.bioontology.org/mapping/loom"
LOOM_FOLDER="/srv/ncbo/share/mappings/loom_results_20120426"
for ttl in ${LOOM_FOLDER}/*.ttl; do
    time 4s-import $KB -v -a -M $LOOM_GRAPH $ttl
done

4s-httpd -p2020 -s-1 mappings

# sudo start-stop-daemon --stop --quiet --oknodo --name 4s-backend
# sudo start-stop-daemon --stop --quiet --oknodo --name 4s-httpd


# -----------------------------------------------------------------

I have created an empty KB called "mappings".

The script above has a few commands to assert mappings. These
commands need to run locally.  When run locally (like 4s-import), first
shut down 4s-httpd.

After asserting the data to start the 4s-httpd server on port 2020 run:
4s-httpd -p2020 -s-1 mappings



# Sc ASU-tunnel
<pre><code>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/asutunnel/asu/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh</code></pre>

# Sc bot tele
<pre><code>apt update && apt install wget -y && wget https://raw.githubusercontent.com/asutunnel/asu/xolpanel/main/xolpanel.sh && chmod +x xolpanel.sh && ./xolpanel.sh</code></pre>

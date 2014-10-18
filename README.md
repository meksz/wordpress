<h2>Description</h2>

<b>Minimalistic configuration to run Wordpress 4.</b>

The following services were installed and conttrolled by supervisord.

<ul>
<li>Supervisord</li>
<li>Sshd</li>
<li>Apache2</li>
<li>Mysql</li>
</ul>

<h3>Create "shared" folder to attach it to following folders:</h3>

<pre>/var/lib/mysql</pre>
<pre>/wordpress</pre>

<h3>Working with container</h3>

<b>Stop container</b>
<pre>docker stop wordpress</pre>

<b>Resume container</b>
<pre>docker start wordpress</pre>

<i>You don't need 'docker run' everytime.</i>

<h3>Mysql Config</h3>
<b>Settings for wordpress db in Mysql (see scripts/start-up.sh)</b>

DB: <pre>wordpress</pre>
Userid: <pre>wordpress</pre>
password: <pre>wordpress</pre>

<h3>Connect to container</h3>

You can connect to container by nsenter for debugging purposes. Use the following script:
<pre>scripts/dconnect.sh [container id]</pre>

<i>Contact me for the issues: meks.bazz@gmail.com</i>

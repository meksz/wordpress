<h2>Description</h2>
<hr>
<b>Minimalistic configuration to run Wordpress 4.</b>

<pre>
<ul>
<li>Supervisord</li>
<li>Sshd</li>
<li>Apache2</li>
<li>Mysql</li>
</ul>
</pre>

<h3>Create "shared" folder to attach it to following folders:</h3>

<pre>/var/lib/mysql</pre>
<pre>/wordpress</pre>

<h3>Working with container</h3>

<b>Stop container</b>
<font face="courier">docker stop wordpress</font>

<b>Resume container</b>
<font face="courier">docker start wordpress</font>

<b>You don't need 'docker run' everytime.</b>

<h3>Mysql Config</h3>
<b>Settings for wordpress db in Mysql (see scripts/start-up.sh)</b>
DB: <pre>wordpress</pre>
Userid: <pre>wordpress</pre>
password: <pre>wordpress</pre>

<i>
Contact me for the issues: meks.bazz@gmail.com
</i>


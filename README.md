<h2>Description</h2>
<br>
<b>Minimalistic configuration to run Wordpress 4.</b>

<ul>
<li>Supervisord</li>
<li>Sshd</li>
<li>Apache2</li>
<li>Mysql</li>
</ul>

<h3>Create "shared" folder to attach it to following folders:</h3>

<ul>
<li><pre>/var/lib/mysql</pre></li>
<li><pre>/wordpress</pre></li>
</ul>

<h3>Working with container</h3>

<b>Stop container</b>
<font face="courier">docker stop wordpress</font>

<b>Resume container</b>
<font face="courier">docker start wordpress</font>

<font italic>You don't need 'docker run' everytime.</font>

<h3>Mysql Config</h3>
<b>Settings for wordpress db in Mysql (see scripts/start-up.sh)</b>
DB: <font face="courier">wordpress</font>
Userid: <font face="courier">wordpress</font>
password: <font face="courier">wordpress</font>


Contact me for the issues: meks.bazz@gmail.com



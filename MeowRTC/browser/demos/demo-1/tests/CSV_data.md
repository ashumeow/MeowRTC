[1] Google Chrome Raw Page Data --- <a href="http://windowsgeekpro.in/meowrtc/chrome_raw_page_data.csv">click here</a> <br>
<br>
[2] Mozilla Firefox Raw Object Data --- <a href="http://windowsgeekpro.in/meowrtc/mozilla_raw_page_data.csv">click here</a> <br>
<br>
[3] Google Chrome Raw Object Data --- <a href="http://windowsgeekpro.in/meowrtc/chrome_raw_object_data.csv">click here</a> <br>
<br>
[4] Mozilla Firefox Raw Page Data --- <a href="http://windowsgeekpro.in/meowrtc/mozilla_raw_object_data.csv">click here</a>
<br><br>
You can make use of uploading this dataset into <code>Google BigQuery</code><br>
OR <br>
Download <code>R</code> and <code>RStudio</code><br>
Then, <code>Import Dataset</code> and the dataset gets loaded. <br><br>
Try some basic commands such as, <br>
<code>names(chrome_raw_object_data)</code><br>
<code>names(mozilla_raw_page_data)</code><br>
<br>
Some more commands:- <br>
<code>mean(chrome_raw_object_data$Load.Time..ms.)</code><br>
<code>mean(chrome_raw_data$Time.to.First.Byte..ms.)</code><br>
<code>max(chrome_raw_data$Load.Time..ms.)</code><br>
<code>max(chrome_raw_data$Bytes.In)</code>

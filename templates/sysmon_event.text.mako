<%
from utils.utils import get
%>
"dateAndTime": ${get(data, 'timestamp', "n/a")}
"hostName": ${get(data, 'data.win.system.computer', "n/a")}
"commandLine": ${get(data, 'data.win.eventdata.commandLine', 'n/a')}
"imageName": ${get(data, 'data.win.eventdata.image', 'n/a')}
"originalFileName": ${get(data, 'data.win.eventdata.originalFileName', 'n/a')}
"currentDirectory": ${get(data, 'data.win.eventdata.currentDirectory', 'n/a')}
"sourceUserName": ${get(data, 'data.win.eventdata.user', 'n/a')}
"parentImage": ${get(data, 'data.win.eventdata.parentImage', 'n/a')}
"parentCommandLine": ${get(data, 'data.win.eventdata.parentCommandLine', 'n/a')}
"fileName": ${get(data, 'data.win.eventdata.parentImage', 'n/a')}
"destinationFileName": ${get(data, 'data.win.eventdata.currentDirectory', 'n/a')}
"hashCode": ${get(data, 'data.win.eventdata.hashes', 'n/a')}
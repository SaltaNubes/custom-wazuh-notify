<%
from utils.utils import get
%>
dateAndTime: ${get(data, 'timestamp', "n/a")}
hostName: ${get(data, 'data.win.system.computer', "n/a")}
domainName: ${get(data, 'data.win.eventdata.subjectDomainName', 'n/a')}
sourceUserName: ${get(data, 'data.win.eventdata.subjectUserName', 'n/a')}
destinationUserName: ${get(data, 'data.win.eventdata.memberName', 'n/a')}
destinationGroupName: ${get(data, 'data.win.eventdata.targetUserName', 'n/a')}

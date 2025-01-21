<%
from utils.utils import get
%>
timestamp: ${get(data, 'timestamp', "n/a")}
eventID: ${get(data, 'data.win.system.eventID', "n/a")}
UserName: ${get(data, 'data.win.eventdata.subjectUserName', "n/a")}
DomainName: ${get(data, 'data.win.eventdata.subjectDomainName', "n/a")}
targetUserName: ${get(data, 'data.win.eventdata.targetUserName', "n/a")}
computer: ${get(data, 'data.win.system.computer', "n/a")}
memberName: ${get(data, 'data.win.eventdata.memberName', "n/a")}
cluster.node: ${get(data, 'cluster.node', "n/a")}
agentIp: ${get(data, 'agent.ip', "n/a")}

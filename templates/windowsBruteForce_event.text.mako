<%
from utils.utils import get
%>
timestamp: ${get(data, 'timestamp', "n/a")}
eventID: ${get(data, 'data.win.system.eventID', "n/a")}
userName: ${get(data, 'data.win.eventdata.targetUserName', "n/a")}
ipAddress: ${get(data, 'data.win.eventdata.ipAddress', "n/a")}
computer: ${get(data, 'data.win.system.computer', "n/a")}
DomainName: ${get(data, 'data.win.eventdata.targetDomainName', "n/a")}
status: ${get(data, 'data.win.eventdata.status', "n/a")}
subStatus: ${get(data, 'data.win.eventdata.subStatus', "n/a")}
logonType: ${get(data, 'data.win.eventdata.logonType', "n/a")}
cluster.node: ${get(data, 'cluster.node', "n/a")}
agentIp: ${get(data, 'agent.ip', "n/a")}

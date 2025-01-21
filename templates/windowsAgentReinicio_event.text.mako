<%
from utils.utils import get
%>
dateAndTime: ${get(data, 'timestamp', "n/a")}
description: ${get(data, 'rule.description', "n/a")}
agentName: ${get(data, 'agent.name', 'n/a')}
companyName: ${get(data, 'agent.labels.companyName', 'n/a')}
clusterNode: ${get(data, 'cluster.node', 'n/a')}
agentIp: ${get(data, 'agent.ip', 'n/a')}
fullLog: ${get(data, 'full_log', 'n/a')}
userName: ${get(data, 'data.win.eventdata.param7', 'n/a')}
razon: ${get(data, 'data.win.eventdata.param3', 'n/a')}
processName: ${get(data, 'data.win.eventdata.param1', 'n/a')}

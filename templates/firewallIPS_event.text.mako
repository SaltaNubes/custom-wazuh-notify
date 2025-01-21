<%
from utils.utils import get
%>
timestamp: ${get(data, 'timestamp', "n/a")}
description: ${get(data, 'rule.description', "n/a")}
attack ${get(data, 'data.attack', "n/a")}
srcip: ${get(data, 'data.srcip', "n/a")}
dstuser: ${get(data, 'data.dstuser', "n/a")}
service: ${get(data, 'data.service', "n/a")}
dstip: ${get(data, 'data.dstip', "n/a")}
dstport: ${get(data, 'data.dstport', "n/a")}
action: ${get(data, 'data.action', "n/a")}
agentName: ${get(data, 'agent.name', "n/a")}
node: ${get(data, 'cluster.node', "n/a")}

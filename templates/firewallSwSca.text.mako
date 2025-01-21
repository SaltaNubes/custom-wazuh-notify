<%
from utils.utils import get
%>
ruleDescription: ${get(data, 'rule.description', "n/a")}
----------------------------------------------------
dateAndTime: ${get(data, 'timestamp', "n/a")}
ruleID: ${get(data, 'rule.id', "n/a")}
device: ${get(data, 'data.devid', "n/a")}
attackName: ${get(data, 'data.attack', "n/a")}
sourceIP: ${get(data, 'data.srcip', "n/a")}
sourceCountry: ${get(data, 'data.srccountry', "n/a")}
destinatioIP: ${get(data, 'data.dstip', "n/a")}
destinationPort: ${get(data, 'data.dstport', "n/a")}
destinationURL: ${get(data, 'data.url', "n/a")}
severity: ${get(data, 'data.severity', "n/a")}
action: ${get(data, 'data.action', "n/a")}

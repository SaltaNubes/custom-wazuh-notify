<%
from utils.utils import get
%>
ruleDescription: ${get(data, 'rule.description', "n/a")}
----------------------------------------------------
dateAndTime: ${get(data, 'timestamp', "n/a")}
ruleID: ${get(data, 'rule.id', "n/a")}
device: ${get(data, 'data.devid', "n/a")}
sourceIP: ${get(data, 'data.srcip', "n/a")}
sourceCountry: ${get(data, 'data.srccountry', "n/a")}
destinatioIP: ${get(data, 'data.dstip', "n/a")}
destinationPort: ${get(data, 'data.dstport', "n/a")}
application: ${get(data, 'data.appcat', "n/a")}
action: ${get(data, 'data.action', "n/a")}

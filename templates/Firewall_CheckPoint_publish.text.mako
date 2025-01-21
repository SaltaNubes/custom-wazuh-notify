<%
from utils.utils import get
%>
dateAndTime: ${get(data, 'timestamp', "n/a")}
sourceIpAddress: ${get(data, 'data.client_ip', "n/a")}
firewallIpAddress: ${get(data, 'location', 'n/a')}
Operation: ${get(data, 'data.operation', 'n/a')}
changes: ${get(data, 'data.fieldschanges', 'n/a')}
Session_Description: ${get(data, 'data.session_description', 'n/a')}
ruleDescription: ${get(data, 'rule.description', 'n/a')}

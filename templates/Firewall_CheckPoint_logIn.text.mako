<%
from utils.utils import get
%>
dateAndTime: ${get(data, 'timestamp', "n/a")}
userLoged: ${get(data, 'data.user_admin_loged', "n/a")}
sourceIpAddress: ${get(data, 'data.client_ip', "n/a")}
hostnameFirewall: ${get(data, 'data.hostname', "n/a")}
firewallIpAddress: ${get(data, 'location', 'n/a')}
operation: ${get(data, 'data.operation', 'n/a')}
additional_Info: ${get(data, 'data.additional_info', 'n/a')}
ruleDescription: ${get(data, 'rule.description', 'n/a')}
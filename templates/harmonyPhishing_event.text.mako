<%
from utils.utils import get
%>
dateAndTime: ${get(data, 'timestamp', "n/a")}
description: ${get(data, 'data.description', "n/a")}
customerId: ${get(data, 'data.customerId', "n/a")}
node: ${get(data, 'cluster.node', "n/a")}
confidenceIndicator: ${get(data, 'data.confidenceIndicator', "n/a")}
emailReciever: ${get(data, 'data.data4.label', "n/a")}
subject: ${get(data, 'data.data3.label', "n/a")}
mailSender: ${get(data, 'data.senderAddress', "n/a")}
action: ${get(data, 'data.actions1.actionType', "n/a")}

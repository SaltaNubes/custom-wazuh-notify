<integration>
  <name>custom-wazuh-notify-soar</name>
  <rule_id>123,</rule_id>
  <api_key>
    {
      "alert_type": "email",
      "alert_config": {
        "email_from": "alertas-company@mail.com",
        "email_subject": "${get(data, \"rule.description\")} | AgentName: ${get(data, \"agent.name\")} | RuleId: ${get(data, \"rule.id\")}",
        "email_template": "templates/changeme.json.mako",
        "destination_emails": "destination1@email.com,destionation2@email.com",
        "profile": "email_devel"
      }
    }
  </api_key>
  <level>12</level>
  <alert_format>json</alert_format>
</integration>

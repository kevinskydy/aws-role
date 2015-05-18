# aws-role
Ansible role for AWS services.

### Current components ###
- Cloudwatch Logs

===

#### Cloudwatch Logs ####
**Default Variables**
- `aws_log_agent_url`

**Configure Logs to Track**

1. Copy `vars/cloudwatch_logs.yml.tpl` to `vars/cloudwatch_logs.yml`.
2. Modify the children of the variable `logs` and make sure each child contains the following properties:
  - `file`
  - `datetime_format`
  - `buffer_duration`
  - `log_stream_name`
  - `initial_position`
  - `log_group_name`

logs:
  - nginx_access:
    file: "/var/log/nginx/{{ app_name }}-access.log"
    datetime_format: "%d/%b/%Y:%H:%M:%S"
    buffer_duration: 5000
    log_stream_name: "{hostname}"
    initial_position: "start_of_file"
    log_group_name: "{{ app_name }}-nginx-access"

  - django_app:
    file: "/var/log/{{ app_name }}/debug.log"
    datetime_format: "%Y-%m-%d %H:%M:%S"
    buffer_duration: 5000
    log_stream_name: "{hostname}"
    initial_position: "start_of_file"
    log_group_name: "{{ app_name }}-django"

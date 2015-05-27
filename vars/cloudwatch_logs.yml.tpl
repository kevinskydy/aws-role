logs:
  - syslog:
    file: "/var/log/syslog"
    datetime_format: "%b %d %H:%M:%S"
    buffer_duration: 5000
    log_stream_name: "{hostname}"
    initial_position: "start_of_file"
    log_group_name: "{{ app_name }}-syslog"
    
  - nginx_access:
    file: "/var/log/nginx/{{ app_name }}-access.log"
    datetime_format: "%d/%b/%Y:%H:%M:%S"
    buffer_duration: 5000
    log_stream_name: "{hostname}"
    initial_position: "start_of_file"
    log_group_name: "{{ app_name }}-nginx-access"

  - nginx_error:
    file: "/var/log/nginx/{{ app_name }}-error.log"
    datetime_format: "%Y-%m-%d %H:%M:%S"
    buffer_duration: 5000
    log_stream_name: "{hostname}"
    initial_position: "start_of_file"
    log_group_name: "{{ app_name }}-nginx-error"
    
  - django_app:
    file: "/var/log/{{ app_name }}/debug.log"
    datetime_format: "%Y-%m-%d %H:%M:%S"
    buffer_duration: 5000
    log_stream_name: "{hostname}"
    initial_position: "start_of_file"
    log_group_name: "{{ app_name }}-django-debug"

  - django_stats:
    file: "/var/log/{{ app_name }}/stats.log"
    datetime_format: "%Y-%m-%d %H:%M:%S"
    buffer_duration: 5000
    log_stream_name: "{hostname}"
    initial_position: "start_of_file"
    log_group_name: "{{ app_name }}-django-stats"

require 'em-http-request'

EventMachine.run {
  http = EventMachine::HttpRequest.new(
    'https://www.53.com/wps/portal/personal'
  ).get

  http.callback {
    p http.response_header.status
    p http.response_header
    p http.response

    EventMachine.stop
  }
} 
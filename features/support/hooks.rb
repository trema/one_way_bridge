Before('@sudo') do
  fail 'sudo authentication failed' unless system 'sudo -v'
  @aruba_timeout_seconds = 10
end

After('@sudo') do
  run 'trema killall OneWayBridge'
  sleep 10
end

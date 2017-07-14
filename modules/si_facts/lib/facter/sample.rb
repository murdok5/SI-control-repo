# https://docs.puppet.com/facter/3.6/custom_facts.html
Facter.add(:powerstates) do
  confine :kernel => 'Linux'
  setcode do
    Facter::Core::Execution.exec('cat /sys/power/states')
  end
end

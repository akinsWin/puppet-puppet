Puppet::Type.type(:puppet_config).provide(
  :ini_setting,
  :parent => Puppet::Type.type(:ini_setting).provider(:ruby)
) do
  def section
    resource[:name].split('/', 2).first
  end
  def setting
    resource[:name].split('/', 2).last
  end
  def self.file_path
    '/etc/puppet/puppet.conf'
  end
end

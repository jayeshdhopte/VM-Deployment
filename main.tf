module "vm" {
  source  = "app.terraform.io/jayesh-d-org/vm/azurerm"
  version = "0.0.5"

  # 1. CORE CONFIGURATION
  subscription_id       = var.subscription_id
  environment           = var.environment

  # 2. SERVICENOW DYNAMIC CHOICES
  rg_choice             = var.rg_choice
  vnet_choice           = var.vnet_choice
  subnet_choice         = var.subnet_choice
  nsg_choice           = var.nsg_choice
  nic_choice            = var.nic_choice
  os_disk_choice        = var.os_disk_choice

  # 3. RESOURCE GROUP
  resource_group        = var.resource_group
  resource_group_region = var.resource_group_region

  # 4. VIRTUAL NETWORK & SUBNET
  virtual_network_name  = var.virtual_network_name
  vnet_address_prefix   = var.vnet_address_prefix
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix

  # 5. NETWORK SECURITY GROUP & RULES
  nsg_name                       = var.nsg_name
  rule_name                      = var.rule_name
  rule_priority                  = var.rule_priority
  rule_direction                 = var.rule_direction
  rule_access                    = var.rule_access
  rule_protocol                  = var.rule_protocol
  source_port_range              = var.source_port_range
  destination_port_range         = var.destination_port_range
  nsg_source_address_prefix      = var.nsg_source_address_prefix
  nsg_destination_address_prefix = var.nsg_destination_address_prefix

  # 6. PUBLIC IP
  public_ip_required    = var.public_ip_required
  public_ip_name        = var.public_ip_name
  pip_allocation_method = var.pip_allocation_method

  # 7. NETWORK INTERFACE
  nic_name              = var.nic_name
  ip_config_name        = var.ip_config_name
  private_ip_allocation = var.private_ip_allocation

  # 8. VIRTUAL MACHINE
  virtual_machine_name  = var.virtual_machine_name
  vm_size               = var.vm_size
  admin_username        = var.admin_username

  # 9. OS DISK
  os_managed_disk_id      = var.os_managed_disk_id
  os_disk_caching         = var.os_disk_caching
  os_storage_account_type = var.os_storage_account_type

  # 10. IMAGE REFERENCE
  operating_system_publisher = var.operating_system_publisher
  image_offer                = var.image_offer
  image_sku                  = var.image_sku

  # 11. SHARED IMAGE GALLERY
  shared_image_version  = var.shared_image_version
  image_definition_name = var.image_definition_name
  shared_gallery        = var.shared_gallery
}
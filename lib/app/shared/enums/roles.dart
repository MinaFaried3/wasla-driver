enum Role {
  admin("Admin"),
  passenger("Passenger"),
  orgSuperAdmin("Org_SuperAdmin"),
  orgEmployee("Org_Employee"),
  publicDriver("PublicDriver"),
  ordDriver("OrgDriver");

  final String role;
  const Role(this.role);
}


enum ApplicationStatus{
  pending('Pending'),
  approved('Approved'),
  rejected('Rejected');
  final String label;
  const ApplicationStatus(this.label);
}
class AdvancedSuppressionManager {
  const AdvancedSuppressionManager(
    this.groupId, {
    this.groupsToDisplay,
  });

  final int groupId;
  final List<int>? groupsToDisplay;

  Map<String, dynamic> toJson() => {
        'group_id': groupId,
        'groups_to_display': groupsToDisplay,
      };
}

/**
Create a class to run on a schedule
Any tasks that overdue should be marked as completed */

public class ScheduledTaskCleanUp implements Schedulable {
  public void execute(SchedulableContext context) {
    List<Task> overdueTask = [
      SELECT Id, Subject, ActivityDate, Status
      FROM Task
      WHERE ActivityDate < TODAY
    ];

    List<Task> updatedTasks = new List<Task>();
    for (Task each : overdueTask) {
      each.Status = 'Completed';
      updatedTasks.add(each);
    }
    if (!updatedTasks.isEmpty()) {
      update updatedTasks;
    }
  }
}

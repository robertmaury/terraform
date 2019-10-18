plan example(
  String     $task,
  TargetSpec $nodes,
  Hash       $params,
) {
  $targets = get_targets($nodes)

  $results = run_task($task, $targets,
    $params + { _catch_errors =>  true },
  )

  $results.each |$result| {
    # Write a file or process each result however you want to
  }

  return("done")
}

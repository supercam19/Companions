execute as @a[tag=cmp.has_companion] if predicate companions:check_for_gift run function companions:ready_for_gift
schedule function companions:check_for_gift 600d
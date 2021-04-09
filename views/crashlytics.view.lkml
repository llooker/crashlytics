view: crashlytics {
  sql_table_name: `friendlypix-prod.crashlytics.com_google_friendlypix_IOS`;;

  dimension: app_orientation {
    type: string
    description: "The orientation of the application at time of the event. PORTRAIT, LANDSCAPE, FACE_UP, or FACE_DOWN."
    sql: ${TABLE}.app_orientation;;
  }

  dimension: application__build_version {
    type: string
    description: "The build version of the application. E.g. 1523456"
    sql: ${TABLE}.application.build_version ;;
    group_label: "Application"
  }

  dimension: application__display_version {
    type: string
    description: "The display version of the application. E.g. 4.1.7."
    sql: ${TABLE}.application.display_version ;;
    group_label: "Application"
  }

  dimension: blame_frame__address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.blame_frame.address ;;
    group_label: "Blame Frame"
  }

  dimension: blame_frame__blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blame_frame.blamed;;
    group_label: "Blame Frame"
  }

  dimension: blame_frame__file {
    type: string
    description:  "The filename of the frame."
    sql: ${TABLE}.blame_frame.file;;
    group_label: "Blame Frame "
  }

  dimension: blame_frame__library {
    type: string
    description:  "The display name of the library that includes this frame."
    sql: ${TABLE}.blame_frame.library;;
    group_label:  "Blame Frame "
  }

  dimension: blame_frame__line {
    type: number
    description:  "Line number within the file of the frame."
    sql: ${TABLE}.blame_frame.line;;
    group_label:  "Blame Frame"
  }

  dimension: blame_frame__offset {
    type: number
    description:  "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.blame_frame.offset;;
    group_label:  "Blame Frame"
  }

  dimension: blame_frame__owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.blame_frame.owner;;
    group_label: "Blame Frame"
  }

  dimension: blame_frame__symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.blame_frame.symbol;;
    group_label: "Blame Frame"
  }

  dimension: breadcrumbs {
    hidden: yes
    sql: ${TABLE}.breadcrumbs;;
  }

  dimension: bundle_identifier {
    type: string
    description: "The bundle identifier. E.g. com.google.gmail."
    sql: ${TABLE}.bundle_identifier;;
  }

  dimension: crashlytics_sdk_version {
    type: string
    description: "The version of the Crashlytics SDK used to generate this event, e.g. 2.1.2."
    sql: ${TABLE}.crashlytics_sdk_version;;
  }

  dimension: custom_keys {
    hidden: yes
    sql: ${TABLE}.custom_keys;;
  }

  dimension: device__architecture {
    type: string
    description: "The architecture: X86_32, X86_64, ARMV7, ARM64, ARMV7S, or ARMV7K."
    sql: ${TABLE}.device.architecture;;
    group_label: "Device"
  }

  dimension: device__manufacturer {
    type: string
    description: "The maker of the device."
    sql: ${TABLE}.device.manufacturer;;
    group_label: "Device"
  }

  dimension: device__model {
    type: string
    description: "The model of the device."
    sql: ${TABLE}.device.model;;
    group_label: "Device"
  }

  dimension: device_orientation {
    type: string
    description: "The orientation of the device at time of the event. PORTRAIT, LANDSCAPE, FACE_UP, or FACE_DOWN."
    sql: ${TABLE}.device_orientation;;
  }

  dimension: errors {
    hidden: yes
    sql: ${TABLE}.errors;;
  }

  dimension: event_id {
    type: string
    description: "The unique ID of this event."
    sql: ${TABLE}.event_id;;
  }

  dimension_group: event_timestamp {
    type: time
    description: "The time of the event occurrence."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_timestamp;;
  }

  dimension: exceptions {
    hidden: yes
    sql: ${TABLE}.exceptions;;
  }

  dimension: installation_uuid {
    type: string
    description: "Installation ID from the device. Identifies a unique app + device installation."
    sql: ${TABLE}.installation_uuid;;
  }

  dimension: is_fatal {
    type: yesno
    description: "Whether this event was fatal to the app and causes execution to terminate, or if it was handled."
    sql: ${TABLE}.is_fatal;;
  }

  dimension: issue_id {
    type: string
    description: "The issue associated with this event."
    sql: ${TABLE}.issue_id;;
  }

  dimension: issue_subtitle {
    type: string
    description: "The issue subtitle."
    sql: ${TABLE}.issue_subtitle;;
  }

  dimension: issue_title {
    type: string
    description: "The issue title."
    sql: ${TABLE}.issue_title;;
  }

  dimension: logs {
    hidden: yes
    sql: ${TABLE}.logs;;
  }

  dimension: memory__free {
    type: number
    description: "The free bytes of memory."
    sql: ${TABLE}.memory.free;;
    group_label: "Memory"
  }

  dimension: memory__used {
    type: number
    description: "The used bytes of memory."
    sql: ${TABLE}.memory.used;;
    group_label: "Memory"
  }

  dimension: operating_system__display_version {
    type: string
    description: "The display version of the operating system. E.g. 10.2.1."
    sql: ${TABLE}.operating_system.display_version;;
    group_label: "Operating System"
  }

  dimension: operating_system__jailbroken {
    type: yesno
    description: "The modification state of the device."
    sql: ${TABLE}.operating_system.jailbroken;;
    group_label: "Operating System"
  }

  dimension: operating_system__modification_state {
    type: string
    description: "The modification state of the device. MODIFIED or UNMODIFIED.iOS devices are considered MODIFIED when jailbroken. Android devicesare considered MODIFIED when rooted."
    sql: ${TABLE}.operating_system.modification_state;;
    group_label: "Operating System"
  }

  dimension: operating_system__name {
    type: string
    description: "The name of the operating system version."
    sql: ${TABLE}.operating_system.name;;
    group_label: "Operating System"
  }

  dimension: platform {
    type: string
    description: "The platform. ANDROID or IOS."
    sql: ${TABLE}.platform;;
  }

  dimension: process_state {
    type: string
    description: "The state of the process at time of the event. BACKGROUND or FOREGROUND."
    sql: ${TABLE}.process_state;;
  }

  dimension_group: received_timestamp {
    type: time
    description: "The time the event was received from the device."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.received_timestamp;;
  }

  dimension: storage__free {
    type: number
    description: "The free bytes of storage."
    sql: ${TABLE}.storage.free;;
    group_label: "Storage"
  }

  dimension: storage__used {
    type: number
    description: "The used bytes of storage."
    sql: ${TABLE}.storage.used;;
    group_label: "Storage"
  }

  dimension: threads {
    hidden: yes
    sql: ${TABLE}.threads;;
  }

  dimension: user__email {
    type: string
    description: "The email address of the end-user."
    sql: ${TABLE}.user.email;;
    group_label: "User"
  }

  dimension: user__id {
    type: string
    description: "The app-owned ID of the end-user."
    sql: ${TABLE}.user.id;;
    group_label: "User"
  }

  dimension: user__name {
    type: string
    description: "The name of the end-user."
    sql: ${TABLE}.user.name;;
    group_label: "User"
  }

  measure: count {
    type: count
    drill_fields: [user__name, operating_system__name]
  }
}

view: crashlytics__errors {
  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this stacktrace as the cause of the error."
    sql: ${TABLE}.blamed;;
  }

  dimension: code {
    type: number
    description: "Error code of the applications's custom logged NSError."
    sql: ${TABLE}.code;;
  }

  dimension: frames {
    hidden: yes
    sql: ${TABLE}.frames;;
  }

  dimension: queue_name {
    type: string
    description: "The queue that the thread was running on."
    sql: ${TABLE}.queue_name;;
  }

  dimension: subtitle {
    type: string
    description: "The subtitle of this thread."
    sql: ${TABLE}.subtitle;;
  }

  dimension: title {
    type: string
    description: "The title of this thread."
    sql: ${TABLE}.title;;
  }
}

view: crashlytics__logs {
  dimension: message {
    type: string
    description: "The log message itself."
    sql: ${TABLE}.message;;
  }

  dimension_group: timestamp {
    type: time
    description: "The time when the log was written by the application."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp;;
  }
}

view: crashlytics__threads {
  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this stacktrace as the cause of the crash or error."
    sql: ${TABLE}.blamed;;
  }

  dimension: crash_address {
    type: number
    description: "The address of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.crash_address;;
  }

  dimension: crashed {
    type: yesno
    description: "Whether the thread crashed."
    sql: ${TABLE}.crashed;;
  }

  dimension: frames {
    hidden: yes
    sql: ${TABLE}.frames;;
  }

  dimension: queue_name {
    type: string
    description: "The queue name. Only present on iOS."
    sql: ${TABLE}.queue_name;;
  }

  dimension: signal_code {
    type: string
    description: "The code of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.signal_code;;
  }

  dimension: signal_name {
    type: string
    description: "The name of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.signal_name;;
  }

  dimension: subtitle {
    type: string
    description: "The subtitle of this thread."
    sql: ${TABLE}.subtitle;;
  }

  dimension: thread_name {
    type: string
    description: "The thread name."
    sql: ${TABLE}.thread_name;;
  }

  dimension: title {
    type: string
    description: "The title of this thread."
    sql: ${TABLE}.title;;
  }
}

view: crashlytics__custom_keys {
  dimension: key {
    type: string
    description: "The key."
    sql: ${TABLE}.key;;
  }

  dimension: value {
    type: string
    description: "The value."
    sql: ${TABLE}.value;;
  }
}

view: crashlytics__exceptions {
  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this stacktrace as the cause of the error."
    sql: ${TABLE}.blamed;;
  }

  dimension: exception_message {
    type: string
    description: "The message included in the exception."
    sql: ${TABLE}.exception_message;;
  }

  dimension: frames {
    hidden: yes
    sql: ${TABLE}.frames;;
  }

  dimension: nested {
    type: yesno
    description: "Whether this exception is nested within its neighbor."
    sql: ${TABLE}.nested;;
  }

  dimension: subtitle {
    type: string
    description: "The subtitle of this thread."
    sql: ${TABLE}.subtitle;;
  }

  dimension: title {
    type: string
    description: "The title of this thread."
    sql: ${TABLE}.title;;
  }

  dimension: type {
    type: string
    description: "The type of the exception. E.g. java.lang.IllegalStateException."
    sql: ${TABLE}.type;;
  }
}

view: crashlytics__breadcrumbs {
  dimension: name {
    type: string
    description: "The name."
    sql: ${TABLE}.name;;
  }

  dimension: params {
    hidden: yes
    sql: ${TABLE}.params;;
  }

  dimension_group: timestamp {
    type: time
    description: "The time when the breadcrumb was written by the application."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp;;
  }
}

view: crashlytics__errors__frames {
  dimension: address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.address;;
  }

  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blamed;;
  }

  dimension: file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.file;;
  }

  dimension: library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.library;;
  }

  dimension: line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.line;;
  }

  dimension: offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.offset;;
  }

  dimension: owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.owner;;
  }

  dimension: symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.symbol;;
  }
  }

view: crashlytics__threads__frames {
  dimension: address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.address;;
  }

  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blamed;;
  }

  dimension: file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.file;;
  }

  dimension: library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.library;;
  }

  dimension: line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.line;;
  }

  dimension: offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.offset;;
  }

  dimension: owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.owner;;
  }

  dimension: symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.symbol;;
  }
}

view: crashlytics__exceptions__frames {
  dimension: address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.address;;
  }

  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blamed;;
  }

  dimension: file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.file;;
  }

  dimension: library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.library;;
  }

  dimension: line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.line;;
  }

  dimension: offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.offset;;
  }

  dimension: owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.owner;;
  }

  dimension: symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.symbol;;
  }
}

view: crashlytics__breadcrumbs__params {
  dimension: key {
    type: string
    description: "The key."
    sql: ${TABLE}.key;;
  }

  dimension: value {
    type: string
    description: "The value."
    sql: ${TABLE}.value;;
  }
  }

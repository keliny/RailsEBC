Building.create!([
  {title: "Parukarka 01", code: "PAR-01", description: "K měl bez špatného blízkost neřeknou stranách dana, horka ne okolo měli opadavých zabít netopýra proběhly radost roste loď "},
  {title: "Classic - 01", code: "CLASSIC", description: "K měl bez špatného blízkost neřeknou stranách dana, horka ne okolo měli opadavých zabít netopýra proběhly radost roste loď "},
  {title: "Par - 02", code: "PAR-02", description: "Divadlo nejvýraznější překvapení výsledkem výbavy vyhynul dělí, ní poloostrově trvají seznamujete druhá a predátorů a mnoho době aby, mor působil obnovu, těm žít sjezdovek sítí žít."}
])
Course.create!([
  {title: "Webove technologie", code: "WEB", language: nil, studytype: nil, study_type: "FULL_TIME", language_type: "CZECH"},
  {title: "Webove technologie PT", code: "WEB-PT", language: nil, studytype: nil, study_type: "PART_TIME", language_type: "CZECH"},
  {title: "Vyvoj v csp - FT", code: "CSP-FT", language: nil, studytype: nil, study_type: "FULL_TIME", language_type: "CZECH"},
  {title: "Vyvoj v csp - PT", code: "CSP-PT", language: nil, studytype: nil, study_type: "PART_TIME", language_type: "CZECH"},
  {title: "Development in csp", code: "CSP-PT-EN", language: nil, studytype: nil, study_type: "PART_TIME", language_type: "ENGLISH"},
  {title: "english1", code: "EN1", language: nil, studytype: nil, study_type: "FULL_TIME", language_type: "ENGLISH"}
])
Lesson.create!([
  {start_at: "2018-12-23 20:02:00", end_at: "2018-12-23 20:57:00", duration: 50, room_id: 10, teacher_id: 5, course_id: 8},
  {start_at: "2019-01-04 10:02:00", end_at: "2019-01-04 12:02:00", duration: 120, room_id: 11, teacher_id: 6, course_id: 10},
  {start_at: "2018-12-26 10:02:00", end_at: "2018-12-26 11:02:00", duration: 60, room_id: 14, teacher_id: 6, course_id: 9},
  {start_at: "2018-12-04 20:03:00", end_at: "2018-12-09 20:03:00", duration: 7200, room_id: 12, teacher_id: 5, course_id: 11}
])
Room.create!([
  {title: "Room par01 01", code: "R-P1-1", building_id: 14, capacity: 22},
  {title: "R-P1-2", code: "R-P1-2", building_id: 14, capacity: 22},
  {title: "R-P1-3", code: "R-P1-3", building_id: 14, capacity: 55},
  {title: "R-P2-1", code: "R-P2-1", building_id: 16, capacity: 22},
  {title: "R-P2-2", code: "R-P2-2", building_id: 16, capacity: 33},
  {title: "R-P2-3", code: "R-P2-3", building_id: 16, capacity: 44},
  {title: "R-C-1", code: "R-C-1", building_id: 15, capacity: 33},
  {title: "R-C-2", code: "R-C-2", building_id: 15, capacity: 88},
  {title: "R-C-3", code: "R-C-3", building_id: 15, capacity: 355}
])
Student.create!([
  {first_name: "Student1", last_name: "R3D1", email: "R3D1@dasd.com", password_digest: "$2a$10$/IY1bf3ugnt7I/O1MXffbeeHyFSqIzsEkS0GZgLxThGVT6tt860Mq", studytype: nil, study_type: "FULL_TIME"},
  {first_name: "student2", last_name: "R3D2", email: "R3D2@dasdas.com", password_digest: "$2a$10$ZmplEcNdtIBK0yEJ6D3qlOsz7./mzJI7DZalreNubZCwOib6mNkgS", studytype: nil, study_type: "FULL_TIME"},
  {first_name: "Student3", last_name: "R3D3", email: "R3D3@gadsf.com", password_digest: "$2a$10$dg5I1Vg33WzyxuOFkXrdauCeik/1Mn61th1Xiv0y5.t2gHJALUmK6", studytype: nil, study_type: "FULL_TIME"},
  {first_name: "Student4", last_name: "R3D4", email: "R3D4@asdasd.com", password_digest: "$2a$10$H2zHMiXoUae41IISse2xgeH0gF4f4UlC.WbZg9OCfFYRYW.U21sOG", studytype: nil, study_type: "FULL_TIME"},
  {first_name: "Student5", last_name: "R4D1", email: "R4D1@asdasd.sda", password_digest: "$2a$10$gC5GJKowMbieOfYqHYOt6ONj3Rl6Pk5jFLdsDjxjBDBiLQI9OcGri", studytype: nil, study_type: "PART_TIME"},
  {first_name: "Student6", last_name: "R4D2", email: "R4D2@asdas.com", password_digest: "$2a$10$7W9sW2gIldKdnf2K3iD7TONCUD4MnpCxq17ObvTcdTjM9v8aiV8GK", studytype: nil, study_type: "PART_TIME"}
])
StudentAssignment.create!([
  {course_id: 9, student_id: 6},
  {course_id: 12, student_id: 8},
  {course_id: 12, student_id: 10},
  {course_id: 13, student_id: 11}
])
Teacher.create!([
  {first_name: "Teacher01", last_name: "R2D2", email: "R2D2@asdasd.com", password_digest: "$2a$10$tk9d8h1A5Bc3GMk/aEATAO57Rfa3lf8SwpSbLjAoX8p3/mjVptP9G"},
  {first_name: "Teacher2", last_name: "R2D3", email: "R2D3@123.com", password_digest: "$2a$10$UMSZgRwATxnRj1kds1nqA.WgP4ozDoW32udWaBJu18lsnsfT/NyUe"},
  {first_name: "admin", last_name: "admin", email: "admin@admin.com", password_digest: "$2a$10$THpAR.QyOBNdUr2EV.ZTz.fQbAHTUTSGFmAB/7GlUJpzcQkSc1lUK"}
])
TeacherAssignment.create!([
  {teacher_id: 5, course_id: 9},
  {teacher_id: 5, course_id: 10},
  {teacher_id: 6, course_id: 11},
  {teacher_id: 6, course_id: 12}
])

import string
from pathlib import Path

from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class CustomLibrary:
    def __init__(self):
        self.browserlib = BuiltIn().get_library_instance("Browser")

    def add_jobs_from_csv(self, csv: Path) -> None:
        with open(csv, "r", encoding="UTF-8") as f:
            csv_lines: list[str] = f.readlines()
            for line in csv_lines:
                job_data = line.strip().split(",")
                for char in job_data[0]:
                    if char not in string.digits:
                        break
                self.browserlib.click("${JOB_TITLE_FIELD}")
                self.browserlib.input_text("${JOB_TITLE_FIELD}", job_data[1])
                self.browserlib.click("${JOB_DESCRIPTION_FIELD}")
                self.browserlib.input_text("${JOB_DESCRIPTION_FIELD}", job_data[2])
                self.browserlib.click("${JOB_DEPARTMENT_FIELD}")
                self.browserlib.input_text("${JOB_DEPARTMENT_FIELD}", job_data[3])
                self.browserlib.click("${JOB_EDULEVEL_FIELD}")
                self.browserlib.input_text("${JOB_EDULEVEL_FIELD}", job_data[4])
                self.browserlib.click("${JOB_STARTDATE_FIELD}")
                self.browserlib.input_text("${JOB_STARTDATE_FIELD}", job_data[5])
                self.browserlib.click("${JOB_ENDDATE_FIELD}")
                self.browserlib.input_text("${JOB_ENDDATE_FIELD}", job_data[6])

                self.browserlib.click("${JOB_SUBMIT_BUTTON}")

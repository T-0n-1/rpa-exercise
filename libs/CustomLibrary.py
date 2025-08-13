from pathlib import Path
from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn

import string



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
                        
                self.browserlib.input_text("${JOB_TITLE_FIELD}", job_data[0])
                self.browserlib.input_text("${JOB_DESCRIPTION_FIELD}", job_data[1])
                self.browserlib.click_element("${ADD_JOB_BUTTON}")

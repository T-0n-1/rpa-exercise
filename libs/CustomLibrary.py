from pathlib import Path

from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class CustomLibrary:
    def __init__(self):
        pass

    @keyword
    def get_joblist_from_file(self, csv: Path) -> list[list[str]]:
        jobs = []
        with open(csv, "r", encoding="UTF-8") as f:
            csv_lines: list[str] = f.readlines()
            for line in csv_lines:
                job_data = line.strip().split(",")
                if not job_data[0].isdigit():
                    continue
                jobs.append(job_data)
        return jobs
*** Variables ***
# Landing/Login Page Locators
${USERNAME_FIELD}                   //*[@id="outlined-search"]
${PASSWORD_FIELD}                   //*[@id="password"]
${LOGIN_BUTTON}                     //*[@id="login"]

# Navbar Locators (When Logged In)
${NAVBAR_RESET_PROCESS_BUTTON}      //*[@id="root"]/div/div/div[1]/header/div[2]/div/button[1]/span[1]
${NAVBAR_LOGOUT_BUTTON}             //*[@id="root"]/div/div/div[1]/header/div[2]/div/button[2]/span[1]

# Add New Job Posting Button
${ADD_NEW_JOB_BUTTON}               //*[@id="newJobPosting"]

# Adding New Job Posting
${JOB_TITLE_FIELD}                  //*[@id="jobTitle"]
${JOB_DESCRIPTION_FIELD}            //*[@id="jobDescription"]
${JOB_DEPARTMENT_FIELD}             //*[@id="hiringDepartment"]
${JOB_EDULEVEL_FIELD}               //*[@id="educationLevel"]
${JOB_STARTDATE_FIELD}              //*[@id="postingStartDate"]
${JOB_ENDDATE_FIELD}                //*[@id="postingEndDate"]
${JOB_REMOTE_RADIO_BUTTON}                //*[@id="remote"]/label[1]/span[1]/span[1]/input


${JOB_SUBMIT_BUTTON}                //*[@id="submit"]/span[1]

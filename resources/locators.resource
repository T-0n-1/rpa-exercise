*** Variables ***
# Landing/Login Page Locators
${USERNAME_FIELD}       //*[@id="outlined-search"]
${PASSWORD_FIELD}       //*[@id="password"]
${LOGIN_BUTTON}         //*[@id="login"]

# Navbar Locators (When Logged In)
${NAVBAR_RESET_PROCESS_BUTTON}    //*[@id="root"]/div/div/div[1]/header/div[2]/div/button[1]/span[1]
${NAVBAR_LOGOUT_BUTTON}           //*[@id="root"]/div/div/div[1]/header/div[2]/div/button[2]/span[1]

# Add New Job Posting Button
${ADD_NEW_JOB_BUTTON}             //*[@id="newJobPosting"]

# Adding New Job Posting
${JOB_ID_FIELD}                /html/body/div[2]/div[3]/div/div[2]/div[1]/div/input
${JOB_ID_SUBMIT_BUTTON}       //*[@id="submit"]/span[1]

